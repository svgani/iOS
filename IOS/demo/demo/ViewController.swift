//
//  ViewController.swift
//  demo
//
//  Created by Amritha Manoharan on 20/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class Home: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    @IBAction func buttontapped(_ sender: UIButton) {
        self.button.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_4))
    }
}

