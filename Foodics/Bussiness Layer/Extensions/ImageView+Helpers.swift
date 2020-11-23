//
//  ImageView+Helpers.swift
//  CME
//
//  Created by Mina on 11/23/20.
//  Copyright © 2020 Mina. All rights reserved.
//


import Foundation
import UIKit
import SDWebImage

extension UIImageView{
    
    func loadImage(imageURL:String,placeholder:String){
        
        self.sd_setImage(with: URL(string: imageURL), placeholderImage: UIImage(named: placeholder))

    }
        
}
