//
//  ViewController.swift
//  sum
//
//  Created by Amritha Manoharan on 27/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var output: UILabel!
    
    @IBAction func calculate(_ sender: AnyObject) {
        let textfield1Int: Int? = Int(textField1.text!)
        let textfield2Int: Int? = Int(textField2.text!)
        let convert = textfield1Int! + 20 + textfield2Int!
        let convertText = String(convert)
        output.text = convertText
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

