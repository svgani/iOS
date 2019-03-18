//
//  ViewController.swift
//  api
//
//  Created by Amritha Manoharan on 01/05/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func parseData() {
        
        let url = "https://restcountries.eu/rest/v1/all"
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
        
        let task = session.dataTask(with: request) { (Data, URLResponse, Error) in
            if(error != nil) {
                print("error")
            }
            else {
                do{
                    let fetchData = try JSONSerialization.jsonObject(with: Data, options: mutableLeaves)
                }
            }
        }
    }


}

