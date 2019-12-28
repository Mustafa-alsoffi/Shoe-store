//
//  ShoeCellCollectionViewCell.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 27/12/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class ShoeCellCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var shoeImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var priceTagView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        priceLabel.backgroundColor = K.UIColors.darkBlue
        priceTagView.backgroundColor = K.UIColors.flatPink
    }

}
