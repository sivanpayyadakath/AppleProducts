//
//  ViewController.swift
//  AppleProducts
//
//  Created by Sivan.Payyadakath on 2019/05/09.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

    var products = ProductLine.productLine()[0].products
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        let product = products[indexPath.row]
        
        cell.textLabel?.text = product.title
        
        return cell
    }

}

