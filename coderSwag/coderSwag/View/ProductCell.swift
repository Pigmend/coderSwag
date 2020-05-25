    //
//  ProductViewCell.swift
//  coderSwag
//
//  Created by Pokrovksy Ilya on 25.05.2020.
//  Copyright © 2020 Pokrovksy Ilya. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.title
        productPrice.text = product.price
    }
}
