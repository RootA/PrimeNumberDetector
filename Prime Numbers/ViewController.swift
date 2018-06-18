//
//  ViewController.swift
//  Prime Numbers
//
//  Created by Antony Mwathi on 18/06/2018.
//  Copyright © 2018 Antony Mwathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNumber: UITextField!
    
    @IBAction func getPrime(_ sender: Any) {
        if let userEnteredString = enterNumber.text {
            let enteredNumber = Int(userEnteredString)
            
            if let number = enteredNumber {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                
                var i = 2
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime {
                    responseLabel.text = "The number is Prime"
                }else {
                    responseLabel.text = "The number is not a prime"
                }
            } else {
                responseLabel.text = "Please enter a positive whole number"
            }
        }
    }
    @IBOutlet weak var responseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

