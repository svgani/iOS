//
//  ViewController.swift
//  pyramid
//
//  Created by Amritha Manoharan on 13/05/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var line: UITextField!
    @IBOutlet weak var star: UILabel!

    @IBAction func show(_ sender: UIButton) {
        star.text = ""
        if line.text != "" {
        let n: Int = Int(line.text!)!
            for i in 1...n
            {
//                for _ in 0..<(n-i){
//                    star.text = star.text! + " "
//                }
                for _ in 1...2*i-1{
                    star.text = star.text! + "*"
                }
               star.text =  star.text! + "\n"
            }

        }
    }
    @IBAction func clear(_ sender: UIButton) {
        line.text = ""
        star.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //    self.line.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
//    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        line.resignFirstResponder()
//        return(true)
//    }




}

