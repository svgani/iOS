//
//  FaceBookViewController.swift
//  webview
//
//  Created by Amritha Manoharan on 29/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class FaceBookViewController: UIViewController {

    @IBOutlet weak var webF: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "http://www.facebook.com")
        webF.loadRequest(URLRequest(url: url!))
    }
    @IBAction func refresh(_ sender: UIBarButtonItem) {
        webF.reload()
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        if webF.canGoBack{
            webF.goBack()
        }
    }
    @IBAction func forward(_ sender: UIBarButtonItem) {
        if webF.canGoForward {
            webF.goForward()
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
