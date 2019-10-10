//
//  MergeSortTests.swift
//  AlgorithmsTests
//
//  Created by Marek Skrzelowski on 10/10/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import XCTest
@testable import Algorithms

class MergeSortTests: XCTestCase {

    let myArray = [8,5,9,4,2,6,7,1,3]
    let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
    let strings = [ "b", "a", "d", "c", "e" ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMergeSortWithStaticNumbers() {
        XCTAssertEqual(mergeSortTopDown(myArray), [1,2,3,4,5,6,7,8,9])
    }

    func testMergeSortWithSorted() {
        XCTAssertEqual(mergeSortTopDown(list), list.sorted())
    }
    
    func testMergeSortWithString() {
        XCTAssertEqual(mergeSortTopDown(strings), ["a","b","c","d","e"])
    }
    
    func testMergeSortWithRandomArraySorted() {
        var randomArray = [Int]()
        for _ in 1...100 {
            let randomNumber = Int.random(in: -1000...1000)
            randomArray.append(randomNumber)
        }
        XCTAssertEqual(mergeSortTopDown(randomArray), randomArray.sorted())
    }
}
