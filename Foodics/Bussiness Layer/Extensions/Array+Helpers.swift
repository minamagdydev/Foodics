//
//  Array+Helpers.swift
//  CME
//
//  Created by Mina on 11/23/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import Foundation

extension Array {
    
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
