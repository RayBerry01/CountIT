//
//  CountITUITests.swift
//  CountITUITests
//
//  Created by Ray Berry on 11/10/2021.
//

import XCTest


class CountITUITests: XCTestCase {

    
    func testButtonSwitch() {
        
        let app = XCUIApplication()
        app.launch()
        app.buttons[("Switch sides for count buttons")].tap()
    }
    func testButtonCountAdd() {
        let app = XCUIApplication()
        app.launch()
        app.buttons[("Increment count")].tap()
    }
    
    func testButtonCountSubtract() {
       let app = XCUIApplication()
        app.launch()
        app.buttons[("Reduce count")].tap()
        
    }
    
    func testSetLimit(){
    let app = XCUIApplication()
    app.launch()
        app.buttons[("Set limit for count")].tap()
    }
    
    /// This measures how long it takes to launch your application.
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                app.launch()
//            }
//        }
//    }
}
