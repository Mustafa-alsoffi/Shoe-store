//
//  TabBarViewController.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 03/01/2020.
//  Copyright © 2020 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class TabBarViewController : UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.cornerRadius = 10
        view.layer.maskedCorners = .layerMinXMinYCorner
        view.backgroundColor = K.UIColors.darkBlue
    }
}
