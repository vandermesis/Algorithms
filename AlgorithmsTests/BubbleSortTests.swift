//
//  BubbleSortTests.swift
//  AlgorithmsTests
//
//  Created by Marek Skrzelowski on 21/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import XCTest
@testable import Algorithms

class BubbleSortTests: XCTestCase {
    
    let myArray = [8,5,9,4,2,6,7,1,3]

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testBubbleSort() {
        XCTAssertEqual(bubbleSort(myArray), [1,2,3,4,5,6,7,8,9])
    }
    
    func testBubbleSortWithSorted() {
        XCTAssertEqual(bubbleSort(myArray), myArray.sorted())
    }
    
    func testBubbleSortWithBool() {
        XCTAssertTrue(bubbleSort(myArray) == [1,2,3,4,5,6,7,8,9])
    }

}
