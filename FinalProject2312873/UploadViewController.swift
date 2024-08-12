//
//  UploadViewController.swift
//  FinalProject2312873
//
//  Created by english on 2024-04-02.
//

import UIKit

protocol UploadDataDelegate: AnyObject {
    func didUploadData(title: String, description: String, date: Date)
}


class UploadViewController: UIViewController {
    weak var delegate: UploadDataDelegate?

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!

    @IBAction func uploadButtonTapped(_ sender: UIButton) {
        guard let title = titleTextField.text,
              let description = descriptionTextField.text,
              let dateString = dateTextField.text,
              let date = dateFromString(dateString) // Function to convert string to Date
        else {
            // Handle invalid input
            return
        }
        
        delegate?.didUploadData(title: title, description: description, date: date)
        dismiss(animated: true, completion: nil)
    }

    private func dateFromString(_ dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd" // Adjust the date format according to your needs
        return dateFormatter.date(from: dateString)
    }
}
