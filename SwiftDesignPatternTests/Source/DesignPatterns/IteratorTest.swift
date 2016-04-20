//
//  IteratorTest.swift
//  SwiftDesignPattern
//
//  Created by ao2-y on 2016/04/20.
//  Copyright © 2016年 ao2-y. All rights reserved.
//

import XCTest
@testable import SwiftDesignPattern

class IteratorTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let ca:ConcreteAggregate = ConcreteAggregate()
        ca.addItem(Item(name: "Item 1"))
        ca.addItem(Item(name: "Item 2"))
        ca.addItem(Item(name: "Item 3"))
        ca.addItem(Item(name: "Item 4"))
        ca.addItem(Item(name: "Item 5"))
        
        let it = ca.iterator()
        
        while it.hasNext() {
            let item = it.next() as! Item
            print(item.name)
        }
    
    }
}
