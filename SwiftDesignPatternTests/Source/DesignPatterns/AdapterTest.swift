//
//  AdapterTest.swift
//  SwiftDesignPattern
//
//  Created by ao2-y on 2016/04/21.
//  Copyright © 2016年 ao2-y. All rights reserved.
//

import XCTest
@testable import SwiftDesignPattern

class AdapterTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        AdapterOverride().requiredMethod()
        AdapterTransfer().requiredMethod()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
