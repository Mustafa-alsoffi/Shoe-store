//
//  Shoe.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 29/12/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import Foundation


struct Shoe {
    
    var image : String?
    var price : String?
    var size : String?
    var sizeStandard : String?
    
    init(image: String? = nil, price: String? = nil, size: String? = nil, sizeStandard: String? = nil) {
        self.image = image
        self.price = price
        self.size = size
        self.sizeStandard = sizeStandard
    }
    

}
