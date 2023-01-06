//
//  LoginScreenView.swift
//  HouseKeeper
//
//  Created by Kaue Ludovico on 04/01/23.
//

import UIKit

class LoginScreenView: BaseView {
    
    lazy var emailText: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.keyboardType = .emailAddress
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    lazy var passText: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Senha"
        textField.isSecureTextEntry = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 15
        return button
    }()
    
    override func addSubviews() {
        self.addSubview(emailText)
        self.addSubview(passText)
        self.addSubview(loginButton)
    }
    
    override func setConstraints() {
        emailText.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 250, left: 16, bottom: 0, right: 16),
            size: .init(width: 363, height: 40))
        
        passText.anchor(
            top: emailText.bottomAnchor,
            leading: emailText.leadingAnchor,
            bottom: nil,
            trailing: emailText.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: emailText.bounds.size.width, height: 40))
        
        loginButton.anchor(
            top: passText.bottomAnchor,
            leading: passText.leadingAnchor,
            bottom: nil,
            trailing: passText.trailingAnchor,
            padding: .init(top: 30, left: 100, bottom: 0, right: 100),
            size: .init(width: 163, height: emailText.bounds.size.height))
        
    }
    
}
