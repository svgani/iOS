//
//  ViewController.swift
//  matrix 3
//
//  Created by Amritha Manoharan on 28/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var b1: UITextField!
    @IBOutlet weak var b2: UITextField!
    @IBOutlet weak var b3: UITextField!
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    @IBOutlet weak var a3: UITextField!
    @IBOutlet weak var c1: UITextField!
    @IBOutlet weak var c2: UITextField!
    @IBOutlet weak var c3: UITextField!
    @IBOutlet weak var d1: UITextField!
    @IBOutlet weak var d2: UITextField!
    @IBOutlet weak var d3: UITextField!
    @IBOutlet weak var x1: UILabel!
    @IBOutlet weak var x2: UILabel!
    @IBOutlet weak var x3: UILabel!
    @IBOutlet weak var e1: UITextField!
    @IBOutlet weak var e2: UITextField!
    @IBOutlet weak var e3: UITextField!
    @IBOutlet weak var y1: UILabel!
    @IBOutlet weak var y2: UILabel!
    @IBOutlet weak var y3: UILabel!
    @IBOutlet weak var f1: UITextField!
    @IBOutlet weak var f2: UITextField!
    @IBOutlet weak var f3: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var z1: UILabel!
    @IBOutlet weak var z2: UILabel!
    @IBOutlet weak var z3: UILabel!
    
    @IBAction func multiply(_ sender: UIButton) {
       
        if  a1.text == "" ||
            a2.text == "" ||
            a3.text == "" ||
            b1.text == "" ||
            b2.text == "" ||
            b3.text == "" ||
            d1.text == "" ||
            d2.text == "" ||
            d3.text == "" ||
            e1.text == "" ||
            e2.text == "" ||
            e3.text == "" ||
            f1.text == "" ||
            f2.text == "" ||
            f3.text == "" ||
            c1.text == "" ||
            c2.text == "" ||
            c3 .text == ""
        {
            label.text = "Please Enter The Required Fields"
        }
        else
        {
            let a: Int? = Int(a1.text!)
            let b: Int? = Int(a2.text!)
            let c: Int? = Int(a3.text!)
            let d: Int? = Int(b1.text!)
            let e: Int? = Int(b2.text!)
            let f: Int? = Int(b3.text!)
            let g: Int? = Int(c1.text!)
            let h: Int? = Int(c2.text!)
            let i: Int? = Int(c3.text!)
            let j: Int? = Int(d1.text!)
            let k: Int? = Int(d2.text!)
            let l: Int? = Int(d3.text!)
            let m: Int? = Int(e1.text!)
            let n: Int? = Int(e2.text!)
            let o: Int? = Int(e3.text!)
            let p: Int? = Int(f1.text!)
            let q: Int? = Int(f2.text!)
            let r: Int? = Int(f3.text!)
            
            var A = a!*j!
            A = A + b!*m!
            A = A + c!*p!
            var B = a!*k!
            B = B + b!*n!
            B = B + c!*q!
            var C = a!*l!
            C = C + b!*o!
            C = C + c!*r!
            var D = d!*j!
            D = D + e!*m!
            D = D + f!*p!
            var E = d!*k!
            E = E + e!*n!
            E = E + f!*q!
            var F = d!*l!
            F = F + e!*o!
            F = F + f!*r!
            var G = g!*j!
            G = G + h!*m!
            G = G + i!*p!
            var H = g!*k!
            H = H + h!*n!
            H = H + i!*q!
            var I = g!*l!
            I = I + h!*o!
            I = I + i!*r!
            
            x1.text = "\(A)"
            x2.text = "\(B)"
            x3.text = "\(C)"
            y1.text = "\(D)"
            y2.text = "\(E)"
            y3.text = "\(F)"
            z1.text = "\(G)"
            z2.text = "\(H)"
            z3.text = "\(I)"

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
        a3.text = ""
        b3.text = ""
        c3.text = ""
        e3.text = ""
        f3.text = ""
        d3.text = ""
        x1.text = ""
        x2.text = ""
        x3.text = ""
        y1.text = ""
        y2.text = ""
        y3.text = ""
        z1.text = ""
        z2.text = ""
        z3.text = ""
        label.text = ""
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        self.f3.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        f3.resignFirstResponder()
        return(true)
    }
}

