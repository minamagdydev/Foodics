//
//  UIView.swift
//  Foodics
//
//  Created by Mina on 11/23/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func roundRect(radius:Double) {
     
        layer.masksToBounds = true
        layer.cornerRadius = CGFloat(radius)
        
    }
    
}
