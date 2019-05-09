//
//  ProductDetailTableViewController.swift
//  AppleProducts
//
//  Created by Sivan.Payyadakath on 2019/05/09.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class ProductDetailTableViewController: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleTextField: UITextField!
    @IBOutlet weak var productDescriptionTextView: UITextView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit product"
        productTitleTextField.delegate = self
        productImageView.image = product?.image
        productTitleTextField.text = product?.title
        productDescriptionTextView.text = product?.description
    }

    //uiScrollviewdelegate already subcass of uiview
    
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        productTitleTextField.resignFirstResponder()
        productDescriptionTextView.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}


