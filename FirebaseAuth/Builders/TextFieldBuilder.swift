//
//  TextFieldBuilder.swift
//  FirebaseAuth
//
//  Created by Emir Alkal on 5.01.2023.
//

import UIKit

extension UITextField {
    static func make(with placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textField.layer.cornerRadius = 4
        textField.placeholder = placeholder
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.secondaryLabel.cgColor
        return textField
    }
}
