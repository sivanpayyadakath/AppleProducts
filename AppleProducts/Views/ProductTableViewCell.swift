//
//  ProductTableViewCell.swift
//  AppleProducts
//
//  Created by Sivan.Payyadakath on 2019/05/09.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//        // Configure the view for the selected state
//    }

 // Mark - Data Model

    var product: Product? {
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI(){
        productImageView?.image = product?.image
        productTitleLabel?.text = product?.title
        productDescriptionLabel?.text = product?.description
    }

}
