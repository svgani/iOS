//
//  add.swift
//  list
//
//  Created by Amritha Manoharan on 25/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class add: UIViewController {

    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func send(_ sender: UIButton) {
        if text.text != "" {
            list.insert(text.text!, at: 0)
        text.text = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
