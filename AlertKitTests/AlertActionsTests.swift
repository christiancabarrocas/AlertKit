//
//  AlertKitTests.swift
//  AlertKitTests
//
//  Created by Christian Cabarrocas on 08/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import XCTest
@testable import AlertKit

class AlertActionsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testActionOK() {
        XCTAssertNotNil(ActionOK().action)
    }
    
    func testActionCancel() {
        XCTAssertNotNil(ActionCancel().action)
    }
    
    func testActionCredentialsOK() {
        XCTAssertNotNil(ActionCredentialsOK().action)
    }
}
