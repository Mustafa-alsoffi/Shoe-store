//
//  NumberOfPairsVC.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 07/01/2020.
//  Copyright © 2020 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class NumberOfPairsVC: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var checkoutButton: UIButton!
    
    @IBOutlet weak var numberOfPairsLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         navigationItem.addImage(name: K.logoName)
        closeButton.layer.cornerRadius = 10
        closeButton.backgroundColor = K.UIColors.darkBlue
        checkoutButton.layer.cornerRadius = 10
        checkoutButton.backgroundColor = K.UIColors.flatPink
        

    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        numberOfPairsLabel.text = ("\(Int(sender.value))")
        priceLabel.text = ("$\(Int(sender.value) * 210)")
        totalAmountLabel.text = ("TOTAL AMOUNT: $\(Int(sender.value) * 159)")
    }
    
    
}
