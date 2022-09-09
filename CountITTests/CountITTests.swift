//
//  CountITTests.swift
//  CountITTests
//
//  Created by Ray Berry on 11/10/2021.
//

import XCTest
import SwiftUI

@testable import CountIT

class CountITTests: XCTestCase {

    func testDecreaseCount(){
    let sut = CountITModel()
    let result = sut.decreaseCount(numberShown: 5)
    let expected = 4
    
    XCTAssertEqual(expected, result)
    }
    
    func testDecreaseCountAtZero(){
    let sut = CountITModel()
        let result = sut.decreaseCount(numberShown: 0)
        let expected = 0
        
        XCTAssertEqual(expected, result)
    }
    
    func testIncreaseCount(){
        let sut = CountITModel()
        let result = sut.increaseCount(maxNumber: 10, numberShown: 5)
        let expected = 6
        
        XCTAssertEqual(expected,result)
    }
    
    func testIncreaseCountMaxReceived() {
        let sut = CountITModel()
        let result = sut.increaseCount(maxNumber: 5, numberShown: 5)
        let expected = 5
        
        XCTAssertEqual(expected,result)
        
    }
    
    func testBackgroundColorGreen() {
        let sut = ContentViewModel()
        let result = sut.determineBackgroundColor(numberShown: 5, setLimit: 30)
        let expected = Color.green
        
        XCTAssertEqual(expected, result)
    }
    
    func testBackgroundColorRed() {
        let sut = ContentViewModel()
        let result = sut.determineBackgroundColor(numberShown: 5, setLimit: 3)
        let expected = Color.red
        
        XCTAssertEqual(expected, result)
    }
    
}
