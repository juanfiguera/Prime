//
//  ViewController.swift
//  Prime
//
//  Created by Juan Figuera on 10/1/14.
//  Copyright (c) 2014 Central Park Labs, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var input: UITextField!
    @IBOutlet var message: UILabel!
    
    @IBAction func goButton(sender: AnyObject) {
        message.text = ""
        var isPrime = true
        
        var number = input.text.toInt()
        
        if ((number) != nil) {
            
            if (number < 1){
            
                message.text = "Please enter a positive number"
            
            } else {
                if (number == 1){
                    
                    message.text = "1 is not prime"
                
                } else {
                    
                    for var i = 2; i < number; ++i {
                        
                        if (number! % i==0) {
                            // Number is not prime
                            isPrime = false
                        }
                        
                    }
                    
                    if (isPrime){
                        message.text = "Number is prime!"
                    } else {
                        message.text = "Number is not prime"
                    }
                    
                }
            }
            
        } else {
            
            message.text = "Number is not prime"
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

