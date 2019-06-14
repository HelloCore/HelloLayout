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
        let usernameLayout = WithLeftIcon(icon: UIImage(named: "avatar")!, child: usernameTextField)
        let passwordLayout = WithLeftIcon(icon: UIImage(named: "padlock")!, child: passwordTextField)
        
        sv([
            usernameLayout,
            passwordLayout,
            loginButton
            ])
        
        layout([
            120,
            |-30-usernameLayout-30-| ~ 40,
            5,
            |-30-passwordLayout-30-| ~ 40,
            5,
            |-30-loginButton-30-|
            ])
        
        self.backgroundColor = UIColor.white
        usernameTextField.placeholder = "Username"
        
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        
        loginButton.setTitle("Login", for: UIControl.State.normal)
    }
}
