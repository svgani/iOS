//
//  ViewController.swift
//  palindrome
//
//  Created by Amritha Manoharan on 27/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.text.delegate = self
    }

    @IBAction func check(_ sender: UIButton) {
        if text.text != "" {
            let str = text.text!
            if str == String(str.characters.reversed()) {
                label.text = "Entered String Is A #Palindrome"
                label.textColor = UIColor.blue
            }
                
            else {
                label.text = "Entered String Is #Not A #Palindrome"
                label.textColor = UIColor.black
            }
        }
        else {
            label.text = "Please Enter The Required Field."
            label.textColor = UIColor.red
        }
    }
    @IBAction func clear(_ sender: UIButton) {
        label.text = ""
        text.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        text.resignFirstResponder()
        return(true)
    }

}

