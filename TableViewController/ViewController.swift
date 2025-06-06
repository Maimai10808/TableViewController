//
//  ViewController.swift
//  TableViewController
//
//  Created by mac on 6/6/25.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let  cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingSubitleCell", for: indexPath)
        
        if #available(iOS 14, *) {
            var content = cell.defaultContentConfiguration()
            content.text = "Shopping Subtitle Item"
            content.secondaryText = "Shopping Subtitle Description"
            content.image = UIImage(systemName: "star.fill")
            cell.contentConfiguration = content
        } else {
            
            
            cell.textLabel?.text = "Shopping Subtitle Item"
            cell.detailTextLabel?.text = "Shopping Subtitle Description"
            cell.imageView?.image = UIImage(systemName: "star.fill")
        }
           return cell
    }


}

