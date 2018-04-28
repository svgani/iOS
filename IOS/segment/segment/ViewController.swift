//
//  ViewController.swift
//  segment
//
//  Created by Amritha Manoharan on 21/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var step: UIStepper!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var pro: UILabel!
    @IBOutlet weak var progress: UIProgressView!
    var current: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func segch(_ sender: UISegmentedControl) {
        if(seg.selectedSegmentIndex==1)
        {
            lab2.isHidden = true
            lab1.isHidden = false
        }
        else
        {
            lab1.isHidden = true
            lab2.isHidden = false
        }
    }
    @IBAction func stepch(_ sender: UIStepper) {
        //let currentValue = Int(sender.value)
        text.text = "\(sender.value)"
    }
    @IBAction func slidech(_ sender: UISlider) {
        //let currentValue = Int(sender.value)
        text1.text = "\(sender.value)"
    }
    @IBAction func start(_ sender: UIButton) {
        pro.text = "0%"
        let i = current
        let max = 20
        if i <= max {
            let ratio = Float(i) / Float(max)
            progress.progress = Float(ratio)
            pro.text = "\(i)"
            current += 1
                    }

        }
}
