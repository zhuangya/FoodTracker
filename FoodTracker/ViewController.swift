//
//  ViewController.swift
//  FoodTracker
//
//  Created by Ya Zhuang on 16/1/25.
//  Copyright © 2016年 Ya Zhuang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("WARNING: memory low");
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    // MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

