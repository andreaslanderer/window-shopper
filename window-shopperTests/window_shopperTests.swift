//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Andreas Landerer on 25.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGetHours() {
        XCTAssert(Wage.getHours(forWage: 20.0, andPrice: 100.0) == 5)
        XCTAssert(Wage.getHours(forWage: 25.0, andPrice: 115.0) == 5)
    }
}
