//
//  ViewController.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit

struct ViewControllerState {
    var username: String
    var password: String
}

class ViewController: UIViewController {

    
    var mainView: MainView!
    var state = ViewControllerState(username: "", password: "") {
        didSet {
            mainView.usernameTextField.text = state.username
            mainView.passwordTextField.text = state.password
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.loginButton.addTarget(self, action: #selector(login), for: UIControl.Event.touchUpInside)
        mainView.usernameTextField.addTarget(self, action: #selector(usernameChanged(_:)), for: UIControl.Event.editingChanged)
        mainView.passwordTextField.addTarget(self, action: #selector(passwordChanged(_:)), for: UIControl.Event.editingChanged)
    }
    
    @objc func login() {
        print("\(state.username):\(state.password)")
    }
    
    @objc func usernameChanged(_ sender: Any) {
        state.username = mainView.usernameTextField.text ?? ""
    }
    
    @objc func passwordChanged(_ sender: Any) {
        state.password = mainView.passwordTextField.text ?? ""
    }
    
    override func loadView() {
        mainView = MainView()
        self.view = mainView
    }
}

