//
//  ViewController.swift
//  Reverse App
//
//  Created by Ірина Зеліско on 27.12.2022.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    
    var reverseManager = ReverseManager()
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var reverseButton: UIButton!
    @IBOutlet weak var reversedTextLabel: UILabel!
    
    
    var state = State.reverse
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        reverseButton.isEnabled = false
        inputTextField.placeholder = "Text to reverse"
        reverseButton.layer.cornerRadius = 14
        reverseButton.alpha = 0.6
        reverseButton.clipsToBounds = true
        inputTextField.accessibilityIdentifier = "inputTextField"
        reversedTextLabel.accessibilityIdentifier = "reversedTextLabel"
        reverseButton.accessibilityIdentifier = "reverseButton"
    }
    enum State {
        case reverse
        case clear
        
        var state: String {
            switch self {
            case .reverse:
                return "Reverse"
            case .clear:
                return "Clear"
            }
        }
    }
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        if inputTextField.text != "" {
            reverseButton.isEnabled = true
            reverseButton.alpha = 1.0
        }else {
            reverseButton.isEnabled = false
        }
        //        reverseButton.isEnabled = inputTextField.text != ""
    }
    
    
    @IBAction func reversePressed(_ sender: UIButton) {
        if let text = inputTextField.text {
            if state == .reverse {
                reversedTextLabel.text = ReverseManager.reverse(text: text)
                reverseButton.setTitle(State.clear.state, for: .normal)
                state = .clear
            } else {
                inputTextField.text = ""
                reversedTextLabel.text = ""
                reverseButton.setTitle(State.reverse.state, for: .normal)
                reverseButton.isEnabled = false
                reverseButton.alpha = 0.6
                state = .reverse
            }
        }
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputTextField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let inputText = inputTextField.text {
            reversedTextLabel.text = ReverseManager.reverse(text: inputText)
            reverseButton.setTitle(State.clear.state, for: .normal)
            state = .clear
        }
        
    }
    
}
