//
//  Category.swift
//  coderSwag
//
//  Created by Pokrovksy Ilya on 25.05.2020.
//  Copyright © 2020 Pokrovksy Ilya. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
