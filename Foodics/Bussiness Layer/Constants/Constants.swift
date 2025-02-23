//
//  Constants.swift
//  Foodics
//
//  Created by Mina on 11/23/20.
//  Copyright © 2020 Mina. All rights reserved.
//


import Foundation
import UIKit

//MARK: API constants

let API_SERVER_URL: String! = (Bundle.main.infoDictionary!)["API_SERVER_URL"] as? String

let API_TOKEN: String! = (Bundle.main.infoDictionary!)["API_TOKEN"] as? String

let TIMEOUT_INTERVAL = 60.0


//MARK : Others

let MAX_CELL_COUNT = 20


//MARK: Colors

let Foodics_SecondColor = UIColor.white

let Foodics_COLOR = UIColor.init(red: 86, green: 15, blue: 162)
