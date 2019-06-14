//
//  ReloadableView.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit
import Vaccine

class ReloadableView: UIView {
    
    init() {
        super.init(frame: CGRect.zero)
        addInjection(with: #selector(injected(_:)))
        loadView()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        addInjection(with: #selector(injected(_:)))
        loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addInjection(with: #selector(injected(_:)))
        loadView()
    }
    
    open func loadView() {
        
    }
    
    @objc open func injected(_ notification: Notification) {
        loadView()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
