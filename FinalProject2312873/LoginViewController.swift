//
//  LoginViewController.swift
//  FinalProject2312873
//
//  Created by english on 2024-04-02.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
    }
    
  

    @IBAction func LoginButtonPressed(_ sender: UIButton) {
        print("Login button pressed")
        if EmailTextField.text  != "" && PasswordTextField.text != ""{
            Auth.auth().signIn(withEmail: EmailTextField.text!, password: PasswordTextField.text!){
                (authData, error) in
                if error != nil{
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Something went wrong")
                }else{
                    self.performSegue(withIdentifier: "loginToAppTabSegue", sender: nil)
                }
            }
        }
    }
    func makeAlert(title: String, message: String  ){
            let alert = UIAlertController( title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present( alert, animated: true, completion: nil)
        }
}


