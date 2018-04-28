//
//  ViewController.swift
//  Quadratic
//
//  Created by Amritha Manoharan on 28/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterA: UITextField!
    @IBOutlet weak var enterB: UITextField!
    @IBOutlet weak var enterC: UITextField!
    @IBOutlet weak var nature: UILabel!
    @IBOutlet weak var roots: UILabel!
    @IBOutlet weak var vi: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func generate(_ sender: UIButton)
    {
        let a: Double? = Double(enterA.text!)
        let b: Double? = Double(enterB.text!)
        let c: Double? = Double(enterC.text!)
        
        if  a == 0
        {
            nature.text = "Please Enter The Proper Value Of A"
            nature.textColor = UIColor.red
        }
        else
        {
                if enterA.text == "" || enterB.text == "" || enterC.text == ""
                {
                nature.text = "Enter All Fields"
                nature.textColor = UIColor.red
                }
                else
                {
                    vi.text = "("+enterA.text!+")" + "(x^2)+" + "("+enterB.text!+")" + "(x)+" + "("+enterC.text!+")" + "= 0"
                let d = (b!*b!)-(4*a!*c!)
                    if d == 0
                    {
                        nature.text = "The Roots Are Real And Equal"
                        nature.textColor = UIColor.blue
                        let r1 = -b!/(2*a!)
                        let r2 = r1
                        roots.text = "Root 1 = \(r1)  Root 2 = \(r2)"
                        roots.textColor = UIColor.orange
                    }
                    else if d > 0
                    {
                        nature.text = "The Roots Are Real And Distinct"
                        nature.textColor = UIColor.blue
                        let x = sqrt(Double(d))
                        let r1 = (-b!+x)/(2*a!)
                        let r2 = (-b!-x)/(2*a!)
                        roots.text = "Root 1 = \(r1)  Root 2 = \(r2)"
                        roots.textColor = UIColor.orange
                    }
                    else
                    {
                        nature.text = "The Roots Are Imaginary And Distinct"
                        nature.textColor = UIColor.blue
                        let real = -b!/(2*a!)
                        let imag = (sqrt(abs(Double(d))))/(2*a!)
                        roots.text = "Root 1 = \(real) + i (\(imag))  Root 2 = \(real) - i (\(imag))"
                        roots.textColor = UIColor.orange

                    }
                }
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        enterA.text = ""
        enterB.text = ""
        enterC.text = ""
        nature.text = ""
         roots.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

