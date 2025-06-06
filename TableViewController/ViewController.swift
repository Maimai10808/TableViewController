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
        let cell: UITableViewCell
            if indexPath.row % 2 == 0 {
                cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingBasicCell", for: indexPath)
                cell.textLabel?.text = "基本购物项目"
            } else {
                cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingSubitleCell", for: indexPath)
                cell.textLabel?.text = "子标题购物项目"
            }
            return cell
    }


}

