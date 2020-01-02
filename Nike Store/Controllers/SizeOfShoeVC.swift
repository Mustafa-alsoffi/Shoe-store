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
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
           let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        tapRcognizerView.addGestureRecognizer(tap)
        
        collectionView.dataSource = self
        collectionView.delegate = self
      

    }
    
 
    
   @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
    
 dismiss(animated: true, completion: nil)
 
    }
    
    

}


extension SizeOfShoeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SizeCell", for: indexPath)
        cell.layer.cornerRadius = 10
        cell.largeContentTitle = "EU /n 40"
        return cell
    }
    
    
}



extension SizeOfShoeVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let heightOfVC = view.frame.height * 1.90
        let widthOfVC = view.frame .width * 3.3
        let height = (heightOfVC / 10) / 2
        let width = (widthOfVC / 10) / 2
        print("Here is your values \(width)")
        
        return CGSize(width: width, height: height)
    }
}
