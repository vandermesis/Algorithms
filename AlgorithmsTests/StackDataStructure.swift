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
        stringStack.push("Marek")
        stringStack.push("Marta")
        stringStack.push("Aga")
        intStack.push(1)
        intStack.push(2)
        intStack.push(3)
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
        stringStack.push("Leszek")
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
        intStack.push(4)
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
    
    func testEmpty() {
      let stack = Stack<Int>()
      XCTAssertTrue(stack.isEmpty)
      XCTAssertEqual(stack.count, 0)
      XCTAssertEqual(stack.peek(), nil)
      XCTAssertNil(stack.pop())
    }
    
    func testOneElement() {
      let stack = Stack<Int>()
      stack.push(123)
      XCTAssertFalse(stack.isEmpty)
      XCTAssertEqual(stack.count, 1)
      XCTAssertEqual(stack.peek(), 123)
        
      let result = stack.pop()
      XCTAssertEqual(result, 123)
      XCTAssertTrue(stack.isEmpty)
      XCTAssertEqual(stack.count, 0)
      XCTAssertEqual(stack.peek(), nil)
      XCTAssertNil(stack.pop())
    }

    func testTwoElements() {
      let stack = Stack<Int>()
        
      stack.push(123)
      stack.push(456)
      XCTAssertFalse(stack.isEmpty)
      XCTAssertEqual(stack.count, 2)
      XCTAssertEqual(stack.peek(), 456)
        
      let result1 = stack.pop()
      XCTAssertEqual(result1, 456)
      XCTAssertFalse(stack.isEmpty)
      XCTAssertEqual(stack.count, 1)
      XCTAssertEqual(stack.peek(), 123)

      let result2 = stack.pop()
      XCTAssertEqual(result2, 123)
      XCTAssertTrue(stack.isEmpty)
      XCTAssertEqual(stack.count, 0)
      XCTAssertEqual(stack.peek(), nil)
      XCTAssertNil(stack.pop())
    }

    func testMakeEmpty() {
      let stack = Stack<Int>()

      stack.push(123)
      stack.push(456)
      XCTAssertNotNil(stack.pop())
      XCTAssertNotNil(stack.pop())
      XCTAssertNil(stack.pop())

      stack.push(789)
      XCTAssertEqual(stack.count, 1)
      XCTAssertEqual(stack.peek(), 789)

      let result = stack.pop()
      XCTAssertEqual(result, 789)
      XCTAssertTrue(stack.isEmpty)
      XCTAssertEqual(stack.count, 0)
      XCTAssertEqual(stack.peek(), nil)
      XCTAssertNil(stack.pop())
    }

}
