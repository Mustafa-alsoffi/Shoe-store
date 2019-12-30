//
//  ShoeSelectedVC.swift
//  Nike Store
//
//  Created by Mustafa Alsoffi on 29/12/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class ShoeSelectedVC: UIViewController {
    
    @IBOutlet weak var infoStackView: UIStackView!
    
    @IBOutlet weak var colorButton1: UIButton!
    
    @IBOutlet weak var colorButton2: UIButton!
    
    @IBOutlet weak var colorButton3: UIButton!
    
    @IBOutlet weak var colorButton4: UIButton!
    
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.addImage(name: K.logoName)

        infoStackView.addBackgroundWithRoundedCorners(color: .gray, maskedCorner: .layerMinXMinYCorner)
        
        ShoesCollectionVC.configButtons(colorButton1, colorButton2, colorButton3, colorButton4, buttonTag: nil)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: K.shoeSelectedNibName, bundle: nil), forCellReuseIdentifier: K.CellIDs.shoeDetailsID)
  
    }

}

//MARK: - Table View Data Source
extension ShoeSelectedVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.CellIDs.shoeDetailsID, for: indexPath) as! SelectedShoeCell
        
        return cell
    }
    
    
}


//MARK: - Table View Delegate
extension ShoeSelectedVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = tableView.frame.height
        
        return height
    }
}
