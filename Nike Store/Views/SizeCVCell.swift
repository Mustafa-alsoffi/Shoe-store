//
//  SizeCVCell.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 03/01/2020.
//  Copyright © 2020 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class SizeCVCell: UICollectionViewCell {
    
    @IBOutlet weak var SizeCellView: UIView!
    
    @IBOutlet weak var sizeNum: UILabel!
    
    @IBOutlet weak var sizeStandard: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SizeCellView.layer.cornerRadius = 10
      
        
    }

}
