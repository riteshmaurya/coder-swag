//
//  ViewController.swift
//  coder-swag
//
//  Created by Ritesh Maurya on 10/21/17.
//  Copyright © 2017 Ritesh Maurya. All rights reserved.
//

import UIKit

class CatagoriesVC: UIViewController, UITableViewDataSource,
UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CaetgoryCell") as? CategoryCell {
                let category = DataService.instance.getCategories()[indexPath.row]
                cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
    }
    
}
}

