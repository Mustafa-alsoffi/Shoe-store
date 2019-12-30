//
//  Constants.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 24/12/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import Foundation
import UIKit

struct K {
    static var cellNibName = "ShoeCellCollectionViewCell"
    static var shoeSelectedNibName = "SelectedShoeCell"
    static var goToShoe = "GoToShoe"
    static var logoName = "logo-whiiite-1"
    
    struct ShoesNames {
        static var adidasFalcon = "adidasFALCON"
        static var nikeAirBlack = "Nike-Air270-blackBig"
    }
    struct UIColors {
        static var deepCove = UIColor(red:0.07, green:0.06, blue:0.25, alpha:1.0)
        static var darkBlue = UIColor(red:0.01, green:0.05, blue:0.13, alpha:1.0)
        static var flatPink = UIColor(red:0.91, green:0.11, blue:0.30, alpha:1.0)
    }
    
    struct CellIDs {
        static var shoeID = "ShoeCell"
        static var shoeDetailsID = "ShoeDetailsCell"
    }
}
