//
//  ViewController.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 23/12/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

// this is master

class ShoesCollectionVC: UIViewController {
    
    @IBOutlet weak var adidasButton: UIButton!
    
    @IBOutlet weak var shoeButton2: UIButton!
    
    @IBOutlet weak var shoeButton3: UIButton!
    
    @IBOutlet weak var shoeButton4: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let shoesArray = [Shoe(image: K.ShoesNames.nikeAirBlack, price: "$210"), Shoe(image: K.ShoesNames.adidasFalcon, price: "$127")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = K.UIColors.deepCove
        
        //Configaring the navigation bar
         

        
        //Making buttons corner radious rounded
        configButtons(adidasButton, shoeButton2, shoeButton3, shoeButton4, buttonTag: 0)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellWithReuseIdentifier: K.CellIDs.shoeID)
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configNavigationBar()
        navigationItem.titleView?.contentMode = .scaleAspectFit
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
      
    }
    
    func configNavigationBar() {
        navigationController?.navigationBar.barTintColor = K.UIColors.deepCove
        let logo = UIImage(named: "logo-whiiite-1")
        let logoImageView = UIImageView(image:logo)
        logoImageView.frame = CGRect(x: 0, y: 0, width: 80, height: 300)
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.setNeedsUpdateConstraints()


        navigationItem.titleView = logoImageView

        
 
    }
    
  
    
    
    
    //make buttons look dim
    func configButtons(_ buttons: UIButton..., buttonTag: Int) {
         
        for button in buttons {
            if button.tag != buttonTag {
                button.alpha = 0.5
            }
         button.layer.cornerRadius =  0.5 * adidasButton.bounds.size.width
         button.imageView?.contentMode = .scaleAspectFit
         button.clipsToBounds = true
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let indexPath = IndexPath(item: sender.tag, section: 0)
         collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
     
        if sender.tag != 0 {
            adidasButton.alpha = 0.5
            shoeButton2.alpha = 1.0
        } else {
            shoeButton2.alpha = 0.5
            adidasButton.alpha = 1.0
        }
    }
    
    
    

}


//MARK: - Collection View Data Source

extension ShoesCollectionVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.CellIDs.shoeID, for: indexPath) as! ShoeCellCollectionViewCell
        
        cell.shoeImageView.image = UIImage(named: shoesArray[indexPath.item].image)
        cell.priceLabel.text = shoesArray[indexPath.item].price
        
        return cell
    }
    
    
    
    
    
}


//MARK: - Collection View Delegate

extension ShoesCollectionVC: UICollectionViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        for cell in collectionView.visibleCells {
            if  let indexPath = collectionView.indexPath(for: cell) {
                if indexPath.item == 0 {
                    shoeButton2.alpha = 0.5
                    adidasButton.alpha = 1.0
                } else {
                    shoeButton2.alpha = 1.0
                    adidasButton.alpha = 0.5
                }
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: K.goToShoe, sender: self)
        
    }
    
    
}


//MARK: - Collection View Delegate FlowLayout

extension ShoesCollectionVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.frame.size
        
        return collectionViewSize
    }
    

}


