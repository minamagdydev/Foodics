//
//  DataManagerTest.swift
//  Foodics
//
//  Created by Mina on 11/23/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import XCTest
@testable import Foodics

var sut: DataManager!

class DataManagerTest: XCTestCase {

    override func setUp() {
        sut = DataManager()
    }

    override func tearDown() {
        sut = nil
    }
    
    func test_Init_arrayCount_EqualZero() {
        let count = sut.productsArr.count
        XCTAssertEqual(count, 0, "should return 0")
    }
    
}
