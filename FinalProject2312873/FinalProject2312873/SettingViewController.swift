//
//  SettingViewController.swift
//  FinalProject2312873
//
//  Created by english on 2024-04-02.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func LogOutButtonPressed(_ sender: UIButton) {
        do{
                    try Auth.auth().signOut()
                }catch {
                    print("error")
                    self.performSegue(withIdentifier: "toViewController", sender: nil)
                }
        performSegue(withIdentifier: "logoutToStartsegue", sender: nil)
    }
    
}
