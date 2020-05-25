//
//  DataService.swift
//  coderSwag
//
//  Created by Pokrovksy Ilya on 25.05.2020.
//  Copyright © 2020 Pokrovksy Ilya. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Epic hat in the shop #1", price: "$18", imageName: "hat01.png"),
        Product(title: "Epic hat in the shop #2", price: "$19", imageName: "hat02.png"),
        Product(title: "Epic hat in the shop #3", price: "$20", imageName: "hat03.png"),
        Product(title: "Epic hat in the shop #4", price: "$25", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Epic hoodie at the shop #1", price: "$25", imageName: "hoodie01.png"),
        Product(title: "Epic hoodie at the shop #1", price: "$30", imageName: "hoodie02.png"),
        Product(title: "Epic hoodie at the shop #1", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Epic hoodie at the shop #1", price: "$39", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Epic shirt at the shop #1", price: "$15", imageName: "shirt01.png"),
        Product(title: "Epic hoodie at the shop #2", price: "$18", imageName: "shirt02.png"),
        Product(title: "Epic hoodie at the shop #3", price: "$19", imageName: "shirt03.png"),
        Product(title: "Epic hoodie at the shop #4", price: "$23", imageName: "shirt04.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getShirts()
        default:
            return getShirts()
        }
        
    }
}
