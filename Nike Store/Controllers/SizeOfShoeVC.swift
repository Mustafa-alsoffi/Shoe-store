//
//  SizeOfShoeVC.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 02/01/2020.
//  Copyright © 2020 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class SizeOfShoeVC: UIViewController {
    

    @IBOutlet weak var tapRcognizerView: UIView!
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        
           let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        tapRcognizerView.addGestureRecognizer(tap)


    }
    
 
    
   @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
    
        dismiss(animated: true, completion: nil)
 
    }
    
    

}
