//
//  ViewController.swift
//  navigation
//
//  Created by Amritha Manoharan on 18/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
        button.layer.shadowRadius = 100
        button.layer.shadowColor = UIColor.red.cgColor
        button.backgroundColor = UIColor.blue
        button.layer.shadowOpacity = 10
        
}

}
