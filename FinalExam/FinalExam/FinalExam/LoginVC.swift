//
//  LoginVC.swift
//  FinalExam
//
//  Created by english on 2024-04-23.
//

import UIKit


class LoginVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty,
              let password = passTextField.text, !password.isEmpty else {
            makeAlert(title: "Error", message: "Please enter both username and password.")
          return
           
        }
        makeAlert(title: "Success", message: "Login successful!")
    }
        
        @IBAction func registerButtonPressed(_ sender: UIButton) {
            performSegue(withIdentifier: "registerSegue", sender: self)
        }
        
        @IBAction func forgotPassButtonPressed(_ sender: UIButton) {
            performSegue(withIdentifier: "forgotPassSegue", sender: self)
        }
        



        
        
        func makeAlert(title: String, message: String  ){
            let alert = UIAlertController( title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present( alert, animated: true, completion: nil)
        }
        
    }



