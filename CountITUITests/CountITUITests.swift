//
//  CountITUITests.swift
//  CountITUITests
//
//  Created by Ray Berry on 11/10/2021.
//

import XCTest
import Foundation

class CountITUITests: XCTestCase {

    override func setUp() {
        let app = XCUIApplication()
        app.launch()
        
    }
    
    override func tearDown() {
        let app = XCUIApplication()
        app.terminate()
    }
    
    
    func testButtonSwitch() {
        
        let app = XCUIApplication()
        app.buttons[("Switch sides for count buttons")].tap()
        
    }
    func testButtonCountAdd() {
        let app = XCUIApplication()
        app.buttons[("Increment count")].tap()
    }
    
    func testButtonCountSubtract() {
       let app = XCUIApplication()
        app.buttons[("Reduce count")].tap()
        
    }
    
    func testSetLimit(){
        let app = XCUIApplication()
        app.buttons[("Set limit for count")].tap()
        
    }
    
    /// This measures how long it takes to launch your application.
//    func testLaunchPerformance() throws {
//
//          measure(metrics: [XCTApplicationLaunchMetric()]) {
//              let app = XCUIApplication()
//               app.launch()
//           }
//       }
}
