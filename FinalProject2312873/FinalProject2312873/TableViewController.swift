//
//  TableViewController.swift
//  FinalProject2312873
//
//  Created by english on 2024-04-16.
//

import UIKit

import Foundation

struct Item {
    let title: String
    let desc: String
    let date: Date
}


class TableViewController: UITableViewController, UploadDataDelegate {
    
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Present the UploadViewController
        if let uploadVC = storyboard?.instantiateViewController(withIdentifier: "UploadViewController") as? UploadViewController {
            uploadVC.delegate = self
            present(uploadVC, animated: true, completion: nil)
        }
    }

    
    // Implement UploadDataDelegate method
    func didUploadData(title: String, description: String, date: Date) {
        // Create a new item and add it to the items array
        let newItem = Item(title: title, desc: description, date: date)
        items.append(newItem)
        
        // Reload table view to reflect the changes
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let item = items[indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.desc
        
        return cell
    }
}

