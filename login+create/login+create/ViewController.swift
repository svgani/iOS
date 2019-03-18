//
//  ViewController.swift
//  login+create
//
//  Created by Amritha Manoharan on 26/08/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pass: UITextField!
    @IBAction func login(_ sender: UIButton) {
        
    }
    @IBOutlet weak var log: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if pass.text == "hai"
        {
            log.isEnabled = true
        }
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

