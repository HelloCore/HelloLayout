//
//  BaseViewController.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        on("INJECTION_BUNDLE_NOTIFICATION") { [weak self] in
            self?.reloaded()
        }
        // Do any additional setup after loading the view.
    }
    
    open func reloaded() {
        loadView()
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
