//
//  SingleTonTest.swift
//  SwiftDesignPattern
//
//  Created by ao2-y on 2016/04/19.
//  Copyright © 2016年 ao2-y. All rights reserved.
//

import XCTest
@testable import SwiftDesignPattern

class SingletonATest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSharedInstance() {
        let instance:SingletonA = SingletonA.sharedInstance;
        XCTAssertNotNil(instance, "instance == nil");
    }
    
    func testCallCnt() {
        let instance1:SingletonA = SingletonA.sharedInstance;
        XCTAssert(instance1.getInitCallCount() == 1, "1 times");
        let instance2:SingletonA = SingletonA.sharedInstance;
        XCTAssert(instance2.getInitCallCount() == 1, "2 times");
    }
}

class SingletonBTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSharedInstance() {
        let instance:SingletonB = SingletonB.sharedInstance;
        XCTAssertNotNil(instance, "instance == nil");
    }
    
    func testCallCnt() {
        let instance1:SingletonB = SingletonB.sharedInstance;
        XCTAssert(instance1.getInitCallCount() == 1, "1 times");
        let instance2:SingletonB = SingletonB.sharedInstance;
        XCTAssert(instance2.getInitCallCount() == 1, "2 times");
    }
}
