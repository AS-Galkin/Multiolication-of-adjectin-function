//
//  ViewController.swift
//  Adjective function
//
//  Created by Александр Галкин on 04.09.2020.
//  Copyright © 2020 ASGalkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftValueTextFiled: UITextField!
    @IBOutlet weak var rightValuetextField: UITextField!
    @IBOutlet weak var iterativeResultTextField: UITextField!
    @IBOutlet weak var recurciveReasultTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let adjectiveFunction: AdjectiveFunction? =
            AdjectiveFunction(leftValue: leftValueTextFiled.text ?? "no data", rightValue: rightValuetextField.text ?? "no data")
        if adjectiveFunction == nil {
            recurciveReasultTextField.text = "Invalid argument was entered"
            iterativeResultTextField.text = "Invalid argument was entered"
        } else {
            recurciveReasultTextField.text = String(adjectiveFunction!.recursiveResult)
            iterativeResultTextField.text = String(adjectiveFunction!.iterativeResult)
        }
    }
}

