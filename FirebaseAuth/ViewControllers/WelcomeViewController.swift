//
//  ViewController.swift
//  FirebaseAuth
//
//  Created by Emir Alkal on 5.01.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - UI Elements
    
    fileprivate let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    fileprivate let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.heightAnchor.constraint(equalToConstant: 55).isActive = true
        button.addTarget(nil, action: #selector(handleSignUp), for: .touchUpInside)
        return button
    }()
    
    fileprivate let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign In", for: .normal)
        button.heightAnchor.constraint(equalToConstant: 55).isActive = true
        button.addTarget(nil, action: #selector(handleSignIn), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(stackView)
        stackView.addArrangedSubview(signUpButton)
        stackView.addArrangedSubview(signInButton)
        
        layout()
    }

    // MARK: - Methods
    fileprivate func layout() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40)
        ])
    }
    
    @objc fileprivate func handleSignUp() {
        navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
    
    @objc fileprivate func handleSignIn() {
        navigationController?.pushViewController(LoginViewController(), animated: true)
    }
}

