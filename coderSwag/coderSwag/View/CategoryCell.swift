//
//  CategoryCell.swift
//  coderSwag
//
//  Created by Pokrovksy Ilya on 25.05.2020.
//  Copyright © 2020 Pokrovksy Ilya. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    //MARK: - IBOutlets
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }

}
