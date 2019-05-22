//
//  ViewController.swift
//  FoodTracker
//
//  Created by Mikko Välimäki on 2019-05-22.
//  Copyright © 2019 Mikko Välimäki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }

    // MARK: Actions

    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

// MARK: UITextFieldDelegate

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
}
