//
//  CategoryCollectionViewCell.swift
//  Foodics
//
//  Created by Mina on 11/23/20.
//  Copyright © 2020 Mina. All rights reserved.
//


import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleBackView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleBackView.backgroundColor = Foodics_COLOR
        titleLabel.textColor = Foodics_SecondColor
        titleBackView.roundRect(radius: 15)
    }

    func setData(category:Category) {
        
        titleLabel.text = category.getName() ?? "N/A"
        
    }
    
}
