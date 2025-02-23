//
//  ProductCollectionViewCell.swift
//  Foodics
//
//  Created by Mina on 11/23/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var displayImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
                
        backgroundColor = Foodics_COLOR
        titleLabel.textColor = Foodics_SecondColor
        titleLabel.backgroundColor = .clear
    }
    
    func setData(product:Product) {
        
        titleLabel.text = product.getName() ?? ""
        
        displayImageView.loadImage(imageURL: product.image ?? "", placeholder: "placeholder")
    }

}
