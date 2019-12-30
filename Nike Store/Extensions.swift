//
//  Extensions.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 29/12/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import Foundation
import UIKit


extension UINavigationItem {

    func addImage(name: String) {
        let image = UIImage(named: name)
        let imageView = UIImageView(image: image)
        imageView.bounds = CGRect(x: 0, y: 0, width: 80, height: 150)
        imageView.contentMode = .scaleAspectFit
        titleView = imageView
    }
    
}


extension UIStackView {
    func addBackgroundWithRoundedCorners(color: UIColor, maskedCorner: CACornerMask) {
        let subView = UIView(frame: bounds)
        subView.backgroundColor = color
        //Bad code I know...
        subView.layer.cornerRadius = 10
 
        subView.layer.maskedCorners = maskedCorner//.layerMinXMinYCorner
     
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subView, at: 0)
    }
}
