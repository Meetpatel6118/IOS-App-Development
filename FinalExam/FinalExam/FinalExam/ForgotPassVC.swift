//
//  ForgotPassVC.swift
//  FinalExam
//
//  Created by english on 2024-04-23.
//

import UIKit

class ForgotPassVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func linkButtonPressed(_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty else {
            makeAlert(title: "Error", message: "Please enter your email.")
            return
        }
        makeAlert(title: "Success", message: "Link has been sent to the email")
    }
    
        func makeAlert(title: String, message: String  ){
            let alert = UIAlertController( title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present( alert, animated: true, completion: nil)
        }

}
