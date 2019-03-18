//
//  InstagramViewController.swift
//  webview
//
//  Created by Amritha Manoharan on 29/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class InstagramViewController: UIViewController {

    @IBOutlet weak var webI: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "http://www.instagram.com")
        webI.loadRequest(URLRequest(url: url!))
    }
    @IBAction func refresh(_ sender: UIBarButtonItem) {
        webI.reload()
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        if webI.canGoBack{
            webI.goBack()
        }
    }
    @IBAction func forward(_ sender: UIBarButtonItem) {
        if webI.canGoForward {
            webI.goForward()
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
