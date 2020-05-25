//
//  ViewController.swift
//  coderSwag
//
//  Created by Pokrovksy Ilya on 25.05.2020.
//  Copyright © 2020 Pokrovksy Ilya. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var categoryTable: UITableView!
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            productVC.initProducts(category: sender as! Category)
        } else { return }
    }
}

//MARK: - CategoriesVC+UITableViewDataSource
extension CategoriesVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
}

//MARK: - CategoriesVC+UITableViewDelegate
extension CategoriesVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
    }
    
}
