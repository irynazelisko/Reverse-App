//
//  Reverse_AppUITests.swift
//  Reverse AppUITests
//
//  Created by Ірина Зеліско on 28.12.2022.
//

import XCTest

class Reverse_AppUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
       
    }

    func testExample() throws {
       
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.textFields["inputTextField"]/*[[".textFields[\"Text to reverse\"]",".textFields[\"inputTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["inputTextField"].typeText("Test String")
//        app.buttons["reverseButton"].tap()
        app.keyboards.buttons["Go"].tap()
        XCTAssertEqual(app.buttons["reverseButton"].label, "Clear")
        app.buttons["reverseButton"].tap()
        XCTAssertEqual(app.buttons["reverseButton"].label, "Reverse")
    }

  
    
}
