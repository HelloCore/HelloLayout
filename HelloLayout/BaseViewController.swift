//
//  BaseViewController.swift
//  HelloLayout
//
//  Created by Akkharawat Chayapiwat on 14/6/2562 BE.
//

import UIKit
import Vaccine

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Injection.add(observer: self, with: #selector(reloaded(_:)))

        // Do any additional setup after loading the view.
    }
    
    @objc open func reloaded(_ notification: Notification) {
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
