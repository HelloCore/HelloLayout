//
//  ReloadableView.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit

class ReloadableView: UIView {
    
    init() {
        super.init(frame: CGRect.zero)
        on("INJECTION_BUNDLE_NOTIFICATION") { [weak self] in
            self?.loadView()
        }
        self.loadView()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        on("INJECTION_BUNDLE_NOTIFICATION") { [weak self] in
            self?.loadView()
        }
        self.loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        on("INJECTION_BUNDLE_NOTIFICATION") { [weak self] in
            self?.loadView()
        }
        self.loadView()
    }
    
    open func loadView() {
        
    }

}
