//
//  SignUpViewController.swift
//  FirebaseAuth
//
//  Created by Emir Alkal on 5.01.2023.
//

import UIKit

final class SignUpViewController: UIViewController {

    fileprivate let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    fileprivate let textFields = [
        UITextField.make(with: "First Name"),
        UITextField.make(with: "Last Name"),
        UITextField.make(with: "Email"),
        UITextField.make(with: "Password"),
    ]
    
    fileprivate let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 55).isActive = true
        button.setTitle("Sign Up", for: .normal)
        return button
    }()
    
    fileprivate let errorLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, world"
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(stackView)
        textFields.forEach { stackView.addArrangedSubview($0) }
        stackView.addArrangedSubview(signUpButton)
        stackView.addArrangedSubview(errorLabel)
        
        layout()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textFields.forEach { $0.style() }
    }
    
    fileprivate func layout() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}
