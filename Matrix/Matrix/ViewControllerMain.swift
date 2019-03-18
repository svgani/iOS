//
//  ViewControllerMain.swift
//  Matrix
//
//  Created by Amritha Manoharan on 28/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewControllerMain: UIViewController {

    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var conview2: UIView!
    @IBOutlet weak var conview3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func segch(_ sender: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0 {
            conview3.isHidden = true
            conview2.isHidden = false
        }
        else{
            conview2.isHidden = true
            conview3.isHidden = false
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
