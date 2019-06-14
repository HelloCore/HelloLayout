//
//  MainViewController.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit

struct MainViewControllerState {
    var username: String
    var password: String
}

class MainViewController: BaseViewController {

    var mainView: MainView!
    var state = MainViewControllerState(username: "", password: "") {
        didSet {
            self.reloadUI()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func login() {
        let homeVC = HomeViewController()
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    @objc func usernameChanged(_ sender: Any) {
        state.username = mainView.usernameTextField.text ?? ""
    }
    
    @objc func passwordChanged(_ sender: Any) {
        state.password = mainView.passwordTextField.text ?? ""
    }
    
    override func loadView() {
        super.loadView()
        
        mainView = MainView()
        self.view = mainView
        self.reloadUI()
    }
    
    func reloadUI() {
        mainView.usernameTextField.text = state.username
        mainView.passwordTextField.text = state.password
        
        mainView.loginButton.addTarget(self, action: #selector(login), for: UIControl.Event.touchUpInside)
        mainView.usernameTextField.addTarget(self, action: #selector(usernameChanged(_:)), for: UIControl.Event.editingChanged)
        mainView.passwordTextField.addTarget(self, action: #selector(passwordChanged(_:)), for: UIControl.Event.editingChanged)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
