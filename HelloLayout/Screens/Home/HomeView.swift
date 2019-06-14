//
//  HomeView.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit
import Stevia

class HomeView: ReloadableView {

    let messageLabel = UILabel()
    
    override func loadView() {
        sv([
            messageLabel
            ])
        
        messageLabel.centerInContainer()
        messageLabel.text = "Hello World 1234"
        
        self.backgroundColor = UIColor.white
    }

}
