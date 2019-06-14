//
//  HomeViewController.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit

class HomeViewController: BaseViewController {
    
    var homeView: HomeView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func loadView() {
        homeView = HomeView()
        self.view = homeView
    }

}
