//
//  StackDataStructure.swift
//  AlgorithmsTests
//
//  Created by Marek Skrzelowski on 22/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import XCTest
@testable import Algorithms

class StackDataStructure: XCTestCase {

    let stringStack = Stack<String>()
    let intStack = Stack<Int>()
    
    override func setUp() {
        stringStack.push(element: "Marek")
        stringStack.push(element: "Marta")
        stringStack.push(element: "Aga")
        intStack.push(element: 1)
        intStack.push(element: 2)
        intStack.push(element: 3)
    }

    override func tearDown() {
    }

    func testStringStackIsEmpty() {
        XCTAssertFalse(stringStack.isEmpty)
    }
    
    func testStringStackPeek() {
        XCTAssertEqual(stringStack.peek(), "Aga")
    }
    
    func testStringStackPop() {
        XCTAssertEqual(stringStack.pop(), "Aga")
        XCTAssertEqual(stringStack.peek(), "Marta")
    }
    
    func testStringStackPush() {
        stringStack.push(element: "Leszek")
        XCTAssertEqual(stringStack.peek(), "Leszek")
    }
    
    func testStringStackCount() {
        XCTAssertEqual(stringStack.count, 3)
    }
    
    func testStringStackIsNil() {
        XCTAssertEqual(stringStack.pop(), "Aga")
        XCTAssertEqual(stringStack.pop(), "Marta")
        XCTAssertEqual(stringStack.pop(), "Marek")
        XCTAssertNil(stringStack.peek())
    }
    
    func testIntStackIsEmpty() {
        XCTAssertFalse(intStack.isEmpty)
    }
    
    func testIntStackPeek() {
        XCTAssertEqual(intStack.peek(), 3)
    }
    
    func testIntStackPop() {
        XCTAssertEqual(intStack.pop(), 3)
        XCTAssertEqual(intStack.peek(), 2)
    }
    
    func testIntStackPush() {
        intStack.push(element: 4)
        XCTAssertEqual(intStack.peek(), 4)
    }
    
    func testIntStackCount() {
        XCTAssertEqual(intStack.count, 3)
    }
    
    func testIntStackIsNil() {
        XCTAssertEqual(intStack.pop(), 3)
        XCTAssertEqual(intStack.pop(), 2)
        XCTAssertEqual(intStack.pop(), 1)
        XCTAssertNil(intStack.peek())
    }

}
