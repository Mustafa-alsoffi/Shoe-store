//
//  ViewController.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 23/12/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var adidasButton: UIButton!
    
    @IBOutlet weak var shoeButton2: UIButton!
    
    @IBOutlet weak var shoeButton3: UIButton!
    
    @IBOutlet weak var shoeButton4: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = K.UIColors.deepCove
        
        //Configaring the navigation bar
        configNavigationBar()
        
        //Making buttons corner radious rounded
        configButtons(adidasButton, shoeButton2, shoeButton3, shoeButton4)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellWithReuseIdentifier: K.CellIDs.shoeID)
        

       
       
        

    }
    
    func configNavigationBar() {
        navigationController?.navigationBar.barTintColor = K.UIColors.deepCove
        let logo = UIImage(named: "logo-whiiite-1")
        let logoImageView = UIImageView(image:logo)
        logoImageView.frame = CGRect(x: 0, y: 0, width: 80, height: 150)
        logoImageView.contentMode = .scaleAspectFill
        
        navigationItem.titleView = logoImageView
    }
    
    func configButtons(_ buttons: UIButton...) {
         
        for button in buttons {
            if button.tag != 1 {
                button.alpha = 0.5
            }
         button.layer.cornerRadius =  0.5 * adidasButton.bounds.size.width
         button.imageView?.contentMode = .scaleAspectFit
         button.clipsToBounds = true
        }
    }

}


//MARK: - Collection View Data Source

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.CellIDs.shoeID, for: indexPath) as! ShoeCellCollectionViewCell
        
        return cell
    }
    
    
}


//MARK: - Collection View Delegate

extension ViewController: UICollectionViewDelegate {
    
 

    
}


//MARK: - Collection View Delegate FlowLayout

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.frame.size
        
        return collectionViewSize
    }
}


