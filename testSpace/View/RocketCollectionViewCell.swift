//
//  RocketCollectionViewCell.swift
//  testSpace
//
//  Created by Илья on 22.08.2022.
//

import UIKit

class RocketCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var valueLable: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var paramView: UIView!
    
    var param: Param? {
        didSet{
            valueLable.text = param?.value
            nameLabel.text = param?.name
        }
    }
}
