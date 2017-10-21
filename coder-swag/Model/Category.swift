//
//  Category.swift
//  coder-swag
//
//  Created by Ritesh Maurya on 10/21/17.
//  Copyright © 2017 Ritesh Maurya. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName:String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
