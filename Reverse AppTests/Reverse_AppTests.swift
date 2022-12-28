//
//  Reverse_AppTests.swift
//  Reverse AppTests
//
//  Created by Ірина Зеліско on 28.12.2022.
//

import XCTest
@testable import Reverse_App

class Reverse_AppTests: XCTestCase {

    func testCorrectReverseText() {
        let text = "Test string"
        let expectedResult = "tseT gnirts"
        
        let result = ReverseManager.reverse(text: text)
        
        XCTAssertEqual(result, expectedResult)
    }

}
