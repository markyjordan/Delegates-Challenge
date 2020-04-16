//
//  TextFieldsViewController.swift
//  Delegates Challenge
//
//  Created by Marky Jordan on 4/14/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//


import UIKit

// MARK: TextFieldsViewController: UIViewController, UITextFieldDelegate

class TextFieldsViewController: UIViewController, UITextFieldDelegate {

    // MARK: Outlets
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textFieldSwitch: UISwitch!
    
    // MARK: Text Field Delegate Objects
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the three delegates
        self.textField1.delegate = zipCodeDelegate
        self.textField2.delegate = cashDelegate
        self.textField3.delegate = self
        
        // set the UISwitch to off
        self.textFieldSwitch.isOn = false
    }
    
    // MARK: Text Field Delegate Methods
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.textFieldSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: Actions
    
    @IBAction func toggleTheTextEditor(_ sender: AnyObject) {
        
        if !(sender as! UISwitch).isOn {
            self.textField3.resignFirstResponder()
        }
    }

}

