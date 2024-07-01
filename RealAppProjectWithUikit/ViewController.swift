//
//  ViewController.swift
//  RealAppProjectWithUikit
//
//  Created by Diar Orynbek on 13.06.2024.
//

import UIKit
import SnapKit

final class ViewController: UITableViewController {
    
    let cellID = "CellID"
    var products : [Product] = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        createProductArray()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        let currentLastItem = products[indexPath.row]
        cell.textLabel?.text = currentLastItem.name
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return products.count
    }
    
    func createProductArray() {
        products.append(Product(name: "Воспоминание", productDiscription: "Самые сокровенные идеи. Сто вещей до жизни"))
        products.append(Product(name: "Входящий", productDiscription: "Весь поток информации которые текут к нашему мозгу"))
        products.append(Product(name: "Идея", productDiscription: "то что нужно сделать когда нибудь. Больше 2 минут"))
        products.append(Product(name: "Планы", productDiscription: "То что нужно сделать и уже внесен в каленьдар. С местой и с датой"))
    }
}

