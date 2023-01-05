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
        textField.placeholder = placeholder
        textField.borderStyle = .none

        return textField
    }
    
    func style() {
        let bottomLine = CALayer()
        bottomLine.frame = .init(x: 0, y: frame.height - 2, width: frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        layer.addSublayer(bottomLine)
    }
}
