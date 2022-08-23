//
//  ViewController.swift
//  testSpace
//
//  Created by Илья on 15.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var infoView: UIView!
    
    @IBOutlet weak var launchButton: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemParamArray: [Param] {
        var blankParam1 = Param()
        blankParam1.name = "Высота, ft"
        blankParam1.value = "229.6"
        
        var blankParam2 = Param()
        blankParam2.name = "Диаметр, ft"
        blankParam2.value = "39.9"
        
        var blankParam3 = Param()
        blankParam3.name = "Масса, lb"
        blankParam3.value = "3,125,735"
        
        var blankParam4 = Param()
        blankParam4.name = "Нагрузка, lb"
        blankParam4.value = "140,660"
        return [blankParam1, blankParam2, blankParam3, blankParam4]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self

        launchButton.layer.masksToBounds = true
        launchButton.layer.cornerRadius = 12
        infoView.layer.masksToBounds = true
        infoView.layer.cornerRadius = 32
        infoView.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMinYCorner]
        
    }
    
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemParamArray.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "paramCell", for: indexPath) as? RocketCollectionViewCell {
            itemCell.param = itemParamArray[indexPath.row]
            itemCell.layer.masksToBounds = true
            itemCell.layer.cornerRadius = 33
            return itemCell
        }
        return UICollectionViewCell()
    }
    
}

