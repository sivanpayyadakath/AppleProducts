//
//  Product.swift
//  AppleProducts
//
//  Created by Sivan.Payyadakath on 2019/05/09.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import Foundation
import UIKit


enum ProductRating{
    case unrated
    case average
    case ok
    case good
    case brilliant
}

class Product{
    var image: UIImage
    var title: String
    var description: String
    var rating: ProductRating
    
    init(title: String, description: String, imageName: String){
        self.title = title
        self.description = description
        if let image = UIImage(named: imageName){
            self.image = image
        } else{
            self.image = UIImage(named: "default")!
        }
        rating = .unrated
    }
}
