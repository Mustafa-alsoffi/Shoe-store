//
//  SelectedShoeCell.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 30/12/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class SelectedShoeCell: UITableViewCell {
    
    
    @IBOutlet weak var shoeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
