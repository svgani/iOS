//
//  ViewController.swift
//  leap_year
//
//  Created by Amritha Manoharan on 27/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var year: UITextField!
        

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func check(_ sender: UIButton) {
        if year.text != ""{
            let ch: Int? = Int(year.text!)
        let c = (ch! % 4 == 0 && ch! % 100 != 0) || ch! % 400 == 0  
        
        if c {
            label.textColor = UIColor.blue
            label.text = year.text! + "  is  a " + " Leap Year"
      }
        else{
            label.textColor = UIColor.black
            label.text = year.text! + "  is " + " Not a Leap Year"
        }
        year.text = ""
    }
        else{
        label.text = "Please Enter Year"
            label.textColor = UIColor.red
        }
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// (year % 4 == 0 && year % 100 != 0) || year % 400 == 0

