//
//  ViewController.swift
//  container
//
//  Created by Amritha Manoharan on 28/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var conview2: UIView!
    @IBOutlet weak var conview3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segch(_ sender: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0 {
            conview2.isHidden = false
            conview3.isHidden = true
        }
        else{
            conview3.isHidden = false
            conview2.isHidden = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

