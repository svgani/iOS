//
//  ViewController.swift
//  Matrix
//
//  Created by Amritha Manoharan on 28/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var b1: UITextField!
    @IBOutlet weak var b2: UITextField!
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    @IBOutlet weak var c1: UITextField!
    @IBOutlet weak var c2: UITextField!
    @IBOutlet weak var d1: UITextField!
    @IBOutlet weak var d2: UITextField!
    @IBOutlet weak var e1: UILabel!
    @IBOutlet weak var e2: UILabel!
    @IBOutlet weak var f1: UILabel!
    @IBOutlet weak var f2: UILabel!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        if  a1.text == "" ||
            a2.text == "" ||
            b1.text == "" ||
            b2.text == "" ||
            c1.text == "" ||
            c2.text == "" ||
            d1.text == "" ||
            d2.text == ""
        {
            label.text = "Please Enter The Required Fields"
        }
        else
        {
            let a: Int? = Int(a1.text!)
            let b: Int? = Int(a2.text!)
            let c: Int? = Int(b1.text!)
            let d: Int? = Int(b2.text!)
            let e: Int? = Int(c1.text!)
            let f: Int? = Int(c2.text!)
            let g: Int? = Int(d1.text!)
            let h: Int? = Int(d2.text!)
            
            var i = a!*e!
                i = i + b!*g!
            var j = a!*f!
                j = j + b!*h!
            var k = c!*e!
                k = k + d!*g!
            var l = c!*f!
                l = l + d!*h!
            
            e1.text = "\(i)"
            e2.text = "\(j)"
            f1.text = "\(k)"
            f2.text = "\(l)"
        }
    }
    @IBAction func clear(_ sender: UIButton) {
        a1.text = ""
        a2.text = ""
        b1.text = ""
        b2.text = ""
        c1.text = ""
        c2.text = ""
        d1.text = ""
        d2.text = ""
        e1.text = ""
        e2.text = ""
        f1.text = ""
        f2.text = ""
        label.text = ""
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

