//
//  ViewController.swift
//  login
//
//  Created by Amritha Manoharan on 21/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pass: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pass.layer.cornerRadius = 12
        }

    @IBAction func login(_ sender: UIButton) {
        if(pass.text == "1234")
        {
            label.text = "Success"
        }
        else
        {
        pass.shake()
        }
    
}

}

extension UITextField {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.04
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: self.center.x - 10.0, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x + 10.0, y: self.center.y)
        layer.add(animation, forKey: "position")
    }
}
