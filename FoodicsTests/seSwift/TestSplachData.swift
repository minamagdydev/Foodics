//
//  TestSplachData.swift
//  FoodicsTests
//
//  Created by Mina on 11/24/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import XCTest
@testable import Foodics

class TestSplachData: XCTestCase {
    
    var sut: SplashViewController!
    
    override func setUp() {
        sut = SplashViewController()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: String(describing: SplashViewController.self)) as? SplashViewController
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func test_Init_arrayCount_EqualZero() {
        let count = sut.arrayOfCategory.count
        XCTAssertEqual(count, 0, "should return 0")
    }
    
    func test_AfterCallCategory_countNotEqualZero() {
        
        let exp = expectation(description: "Loading categories")
        sut.getCategories() {
            exp.fulfill()
        }
        waitForExpectations(timeout: 10)
        let count = sut.arrayOfCategory.count
        XCTAssertNotEqual(count, 0)
        
    }
    
    func test_Init_arrayOfProductsCount_EqualZero() {
           let count = sut.arrayOfProducts.count
           XCTAssertEqual(count, 0, "should return 0")
       }
       
       func test_AfterCallProducts_countNotEqualZero() {
           
           let exp = expectation(description: "Loading categories")
           sut.getProducts() {
               exp.fulfill()
           }
           waitForExpectations(timeout: 10)
           let count = sut.arrayOfProducts.count
           XCTAssertNotEqual(count, 0)
           
       }
    
}
