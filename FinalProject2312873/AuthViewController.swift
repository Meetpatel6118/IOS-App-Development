//
//  AuthViewController.swift
//  FinalProject2312873
//
//  Created by english on 2024-04-02.
//

import UIKit

class AuthViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let loginVC = LoginViewController()
                loginVC.tabBarItem = UITabBarItem(title: "Login", image: nil, selectedImage: nil)
                
                let registerVC = RegisterViewController()
                registerVC.tabBarItem = UITabBarItem(title: "Register", image: nil, selectedImage: nil)
                
                self.viewControllers = [loginVC, registerVC]
        
    }
    
}
