//
//  ViewController.swift
//  TableViewController
//
//  Created by mac on 6/6/25.
//

import UIKit


struct User {
    let name: String
    let shoppingItems : [ShoppingItem]
}

struct ShoppingItem {
    let title: String
    let subTitle: String
    let image: UIImage
}


class ViewController: UITableViewController {
    
    var users: [User] = [
        User(name: "Mai", shoppingItems: [ShoppingItem(title: "Apple", subTitle: "Buy 4 apples", image: UIImage(systemName: "applelogo")!),
                                          ShoppingItem(title: "Banana", subTitle: "Get a bunch of bananas", image: UIImage(systemName: "leaf")!)]),
        User(name: "Paul", shoppingItems: [ShoppingItem(title: "Orange", subTitle: "Buy 3 oranges", image: UIImage(systemName: "circle.fill")!), // 可用其他更合适图标替代
                                           ShoppingItem(title: "Strawberry", subTitle: "Buy 1 box of strawberries", image: UIImage(systemName: "heart.fill")!),
                                           ShoppingItem(title: "Watermelon", subTitle: "Buy a watermelon", image: UIImage(systemName: "drop.fill")!)  ]),
        User(name: "Laura", shoppingItems: [ShoppingItem(title: "Orange", subTitle: "Buy 3 oranges", image: UIImage(systemName: "circle.fill")!), // 可用其他更合适图标替代
                                           ShoppingItem(title: "Strawberry", subTitle: "Buy 1 box of strawberries", image: UIImage(systemName: "heart.fill")!),
                                           ShoppingItem(title: "Watermelon", subTitle: "Buy a watermelon", image: UIImage(systemName: "drop.fill")!)  ]),
        User(name: "Jason", shoppingItems: [ShoppingItem(title: "Apple", subTitle: "Buy 4 apples", image: UIImage(systemName: "applelogo")!),
                                          ShoppingItem(title: "Banana", subTitle: "Get a bunch of bananas", image: UIImage(systemName: "leaf")!)])
        ]
       
    
//    var shoppingItems: [ShoppingItem] = [
//        ShoppingItem(title: "Apple", subTitle: "Buy 4 apples", image: UIImage(systemName: "applelogo")!),
//        ShoppingItem(title: "Banana", subTitle: "Get a bunch of bananas", image: UIImage(systemName: "leaf")!),
//        ShoppingItem(title: "Orange", subTitle: "Buy 3 oranges", image: UIImage(systemName: "circle.fill")!), // 可用其他更合适图标替代
//        ShoppingItem(title: "Strawberry", subTitle: "Buy 1 box of strawberries", image: UIImage(systemName: "heart.fill")!),
//        ShoppingItem(title: "Watermelon", subTitle: "Buy a watermelon", image: UIImage(systemName: "drop.fill")!) // 近似替代
//    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users[section].shoppingItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let  cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingSubitleCell", for: indexPath)
        let shoppingItem = users[indexPath.section].shoppingItems[indexPath.row]
        
        if #available(iOS 14, *) {
            var content = cell.defaultContentConfiguration()
            
            content.text          =  shoppingItem.title
            content.secondaryText =  shoppingItem.subTitle
            content.image         =  shoppingItem.image
            
            cell.contentConfiguration = content
        } else {
            
            cell.textLabel?.text       = shoppingItem.title
            cell.detailTextLabel?.text = shoppingItem.subTitle
            cell.imageView?.image      = shoppingItem.image
        }
           return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return users[section].name
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(users[section].name) has \(users[section].shoppingItems.count) items"
    }


}

