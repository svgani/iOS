//
//  googleViewController.swift
//  webview
//
//  Created by Amritha Manoharan on 29/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class googleViewController: UIViewController {

    @IBOutlet weak var webG: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://www.google.co.in")
        webG.loadRequest(URLRequest(url: url!))
    }
    @IBAction func refresh(_ sender: UIBarButtonItem) {
        webG.reload()
    }

    @IBAction func back(_ sender: UIBarButtonItem) {
        if webG.canGoBack{
            webG.goBack()
        }
    }
    @IBAction func forward(_ sender: UIBarButtonItem) {
        if webG.canGoForward {
            webG.goForward()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

