//
//  ViewController.swift
//  words
//
//  Created by Amritha Manoharan on 20/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var label: UILabel!
        @IBAction func convert(_ sender: UIButton) {
            label.text = ""
            number.placeholder = "Next Number"
            let n:Int? = Int(number.text!)
            //let n = 100
            var count = 0
            var x = n
            
            func digits(a: Int)
            {
                while x != 0
                {
                    x! /= 10
                    count += 1
                }
                x = n
            }
            
            func word(b: Int)
            {
                if(count==0){
                    print("zero")}
                if(count==1){
                    switch1(c: x!)}
                if(count==2){
                    tens(d: x!)}
                if(count==3){
                    hundreds(d: x!)}
                if(count==4){
                    thousands(d: x!)}
            }
            
            func tens(d: Int)
            {
                var x1 = 0
                var y = 0
                if((x! > 9 &&x! <=19) || x! % 10==0)
                {
                    switch2(c: x!)
                }
                else
                {
                    x1 = x % 10
                    x = x / 10
                    y = x * 10
                    switch2(c: y)
                    switch1(c: x1)
                }
            }
            
            func hundreds(d: Int)
            {
                var z = 0
                let y = x
                x = y % 100
                z = y / 100
                switch1(c: z)
                if(y >= 100){
                    print("hundred ")}
                if(x != 0){
                    print("and ")}
                tens(d: x)
            }
            
            func thousands(d: Int)
            {
                var z = 0
                let y = x
                x = y % 1000
                z = y / 1000
                switch1(c: z)
                if(y >= 1000){
                    print("thousand ")}
                if(x != 0){
                    hundreds(d: x)}
            }
            
            
            func switch1(c: Int)
            {
                switch(x)
                {
                case 1 : print("one ")
                    break
                case 2 : print("two ")
                    break
                case 3 : print("three ")
                    break
                case 4 : print("four ")
                    break
                case 5 : print("five ")
                    break
                case 6 : print("six ")
                    break
                case 7 : print("seven ")
                    break
                case 8 : print("eight ")
                    break
                case 9 : print("nine ")
                    break
                default : print("check")
                }
            }
            
            func switch2(c: Int)
            {
                switch(x)
                {
                case 10  : print("ten ")
                    break
                case 11 : print("eleven ")
                    break
                case 12 : print("twelve ")
                    break
                case 13 : print("thirteen ")
                    break
                case 14 : print("fourteen ")
                    break
                case 15 : print("fifteen ")
                    break
                case 16 : print("sixteen ")
                    break
                case 17 : print("seventeen ")
                    break
                case 18 : print("eighteen ")
                    break
                case 19 : print("nineteen ")
                    break
                case 20  : print("twenty ")
                    break
                case 30  : print("thitry ")
                    break
                case 40 : print("fourty ")
                    break
                case 50 : print("fifty ")
                    break
                case 60 : print("sixty ")
                    break
                case 70 : print("seventy ")
                    break
                case 80 : print("eighty ")
                    break
                case 90 : print("ninety ")
                    break
                default : print("check")
                }
            }
            
            print("entered number is \(x)")
            digits(a: x)
            word(b: x)

            label.text = y!+" a"
            number.text = ""
            
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

