//
//  DataService.swift
//  coder-swag
//
//  Created by Ritesh Maurya on 10/21/17.
//  Copyright © 2017 Ritesh Maurya. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let cagories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    func getCategories() -> [Category]{
        return cagories
    }
}
