//
//  ShoeSelectedVC.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 29/12/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class ShoeSelectedVC: UIViewController {
    
    @IBOutlet weak var infoBarView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
            let logo = UIImage(named: "logo-whiiite-1")
            let logoImageView = UIImageView(image:logo)
            logoImageView.frame = CGRect(x: 0, y: 0, width: 80, height: 150)
            logoImageView.contentMode = .scaleAspectFill
        

            navigationItem.titleView = logoImageView
        
        

    }

}
