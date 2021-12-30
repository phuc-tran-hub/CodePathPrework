//
//  ViewController.swift
//  CodePath IOS Prework
//
//  Created by Phuc Tran on 12/29/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Button and label variables
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var LabelField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LabelField.delegate = self
    
    }
    // Change label's color
    @IBAction func ButtonClicked(_ sender: Any) {
        TextLabel.textColor = UIColor.orange
    }
    
    // Change the color of the background view with a button
    @IBAction func BackgroundClicked(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    // Change the text string of the label with a button
    @IBAction func LabelClicked(_ sender: Any) {
        TextLabel.text = "Goodbye!"
    }
    
    // Update the label text with custom text entered to default settings
    @IBAction func CompleteClicked(_ sender: Any) {
        
        // Default text string if empty
        if TextLabel.text == "" {
                TextLabel.text = "Hello!"
        } else {
        TextLabel.text = LabelField.text
        }
        
        // Dismissing the keyboard after the button is pressed
        LabelField.resignFirstResponder()
    }
    
    // Reset all views to default settings to reset all views of default settings
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        TextLabel.textColor = UIColor.blue
        view.backgroundColor = UIColor.orange
        TextLabel.text = "Hello!"
        
    }
    
}

extension ViewController : UITextFieldDelegate{
    
    // Return to dismiss keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

