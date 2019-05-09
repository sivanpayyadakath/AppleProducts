//
//  ViewController.swift
//  AppleProducts
//
//  Created by Sivan.Payyadakath on 2019/05/09.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

    var productLines: [ProductLine] = ProductLine.productLine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        title = "Apple Products"
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableView.automaticDimension
        
        navigationItem .rightBarButtonItem = editButtonItem
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return productLines.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productLines[section].products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        
        let productLine = productLines[indexPath.section]
        let products = productLine.products
        let product = products[indexPath.row]
        
        cell.product = product
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let productLine = productLines[section]
        return productLine.name
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let productLine = productLines[indexPath.section]
        productLine.products.remove(at: indexPath.row)
        
        //remove from table view
        //tableView.reloadData()   //bad way
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
}

