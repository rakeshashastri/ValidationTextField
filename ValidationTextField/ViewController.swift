//
//  ViewController.swift
//  ValidationTextField
//
//  Created by Rakesha Shastri on 08/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var validationTextField: ValidationTextField = {
        let textField = ValidationTextField()
        textField.update(headerText: "Username", footerText: "Special characters not allowed", textLimit: 20)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var dismissTextFieldGesture: UITapGestureRecognizer = {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissTextField))
        return gestureRecognizer
    }()
    
    @objc func dismissTextField() {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(validationTextField)
        view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            validationTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            validationTextField.bottomAnchor.constraint(equalTo: view.centerYAnchor),
            validationTextField.widthAnchor.constraint(equalToConstant: 400)
        ])
        
        view.addGestureRecognizer(dismissTextFieldGesture)
    }

}

