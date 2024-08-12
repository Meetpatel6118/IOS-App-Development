//
//  RegisterViewController.swift
//  FinalProject2312873
//
//  Created by english on 2024-04-02.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func RegisterButtonPressed(_ sender: UIButton) {
        if EmailTextField.text != "" && PasswordTextField.text != "" {
            Auth.auth().createUser(withEmail: EmailTextField.text!, password: PasswordTextField.text! ){
                ( authData, error) in
                if error != nil {
                    self.makeAlert(title: "Firebase Error", message: error?.localizedDescription ?? "Something went wrong!")
                }else {
                    self.tabBarController?.selectedIndex = 0
                }
            }
        }else{
            makeAlert(title: "Error", message: "Email/Password is missing!") //  custom Alert Function.
        }
        
        self.tabBarController?.selectedIndex = 0
    }
    func makeAlert(title: String, message: String  ){
        let alert = UIAlertController( title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        // The present(_:animated:completion:) method is used to display the alert modally.
        self.present( alert, animated: true, completion: nil)
    }
}
