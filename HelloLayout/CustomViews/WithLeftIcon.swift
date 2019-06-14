//
//  WithLeftIcon.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit
import Stevia

class WithLeftIcon: ReloadableView {
    
    init(icon: UIImage, child: UIView) {
        self.child = child
        self.iconImageView = UIImageView(image: icon)
        
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var iconImageView: UIImageView
    var child: UIView
    
    override func loadView() {
        sv([
            iconImageView,
            child
            ])
        
        layout([
            |-iconImageView.width(20).height(20).centerVertically()-10-child.height(30).centerVertically()-|
            ])
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 5
    }
    
}
