//
//  MainView.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit
import Stevia

class MainView: ReloadableView {
    
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let loginButton = UIButton(type: UIButton.ButtonType.roundedRect)
    
    override func loadView() {
        sv([
            usernameTextField,
            passwordTextField,
            loginButton
            ])
        
        layout([
            120,
            |-30-usernameTextField-30-|,
            5,
            |-30-passwordTextField-30-|,
            5,
            |-30-loginButton-30-|
            ])
        
        self.backgroundColor = UIColor.white
        usernameTextField.placeholder = "Username"
        usernameTextField.borderStyle = .roundedRect
        
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        
        loginButton.setTitle("Login", for: UIControl.State.normal)
    }
}
