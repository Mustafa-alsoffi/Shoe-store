//
//  SizeOfShoeVC.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 02/01/2020.
//  Copyright © 2020 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class SizeOfShoeVC: UIViewController {
    

    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    
    @IBOutlet weak var tapRcognizerView: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var addToCartButton: UIButton!
    
    @IBOutlet weak var addToFavouritesButton: UIButton!
    
    var shoeSelectedVC : ShoeSelectedVC?
    
        let shoeSizes = [Shoe(size: "40", sizeStandard: "EU"), Shoe(size: "36", sizeStandard: "EU"), Shoe(size: "22", sizeStandard: "EU"), Shoe(size: "32", sizeStandard: "EU"), Shoe(size: "15", sizeStandard: "EU"), Shoe(size: "33", sizeStandard: "EU"), Shoe(size: "25", sizeStandard: "EU"), Shoe(size: "29", sizeStandard: "EU"), Shoe(size: "27", sizeStandard: "EU"), Shoe(size: "50", sizeStandard: "EU")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addToCartButton.layer.cornerRadius = 10
        addToCartButton.layer.borderWidth = 1
        addToCartButton.layer.borderColor = CGColor(srgbRed:0.91, green:0.11, blue:0.30, alpha:1.0)
        addToFavouritesButton.layer.cornerRadius = 10
           let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        tapRcognizerView.addGestureRecognizer(tap)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "SizeCVCell", bundle: nil), forCellWithReuseIdentifier: "SizeCell")
        
        addToCartButton.isEnabled = false
        
      
    }
    
   
    
  
 
    
   @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
    
 dismiss(animated: true, completion: nil)
 
    }
    
    
    @IBAction func addToSomethingPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            dismiss(animated: true) {
                
                

            }
           
       
        }
        
    }
    

    
    

}

//MARK: - Collection View Data Source
extension SizeOfShoeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shoeSizes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SizeCell", for: indexPath) as! SizeCVCell
        
        cell.sizeStandard.text = shoeSizes[indexPath.item].sizeStandard ?? "UK"
        cell.sizeNum.text = shoeSizes[indexPath.item].size ?? "40"
        

        
        return cell
    }
    
    
}


//MARK: - Collection View Delegate Flow Layout
extension SizeOfShoeVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let heightOfVC = view.frame.height * 1.90
        let widthOfVC = view.frame.width * 3.4
        let height = (heightOfVC / 10) / 2
        let width = (widthOfVC / 10) / 2
       
        

        return CGSize(width: width, height: height)
    }
}


//MARK: - Collection View Delegate
extension SizeOfShoeVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! SizeCVCell


        cell.SizeCellView.layer.borderWidth = 1
        cell.SizeCellView.layer.borderColor = CGColor(srgbRed:0.91, green:0.11, blue:0.30, alpha:1.0)
        
        addToCartButton.backgroundColor = K.UIColors.flatPink

        addToCartButton.isEnabled = true
        addToCartButton.setTitleColor(.white, for: .normal)

    
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! SizeCVCell
        cell.SizeCellView.layer.borderWidth = 0
    }
    
 
}
