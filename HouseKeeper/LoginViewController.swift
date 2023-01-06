//
//  ViewController.swift
//  HouseKeeper
//
//  Created by Kaue Ludovico on 04/01/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var customView = LoginScreenView()
    
    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        customView.loginButton.addTarget(self, action: #selector(navigationToHome), for: .touchUpInside)
    }
    
    
    @objc func navigationToHome() {
        let homeViewController = HomeViewController()
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
}

