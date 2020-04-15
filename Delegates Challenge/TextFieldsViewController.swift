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
        
    }
    
    // MARK: Text Field Delegate Methods


}

