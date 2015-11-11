//
//  AlertTypesTests.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 11/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import XCTest
@testable import AlertKit

class AlertTypesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTimeout() {
        XCTAssertNotNil(Timeout().data)
    }
    
    func testNetworkError() {
        XCTAssertNotNil(NetworkError().data)
    }
    
    func testCredentialsConfirmation() {
        XCTAssertNotNil(CredentialsConfirmation().data)
    }
    
}
