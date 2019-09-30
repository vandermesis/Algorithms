//
//  InsertionSortTests.swift
//  AlgorithmsTests
//
//  Created by Marek Skrzelowski on 30/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import XCTest
@testable import Algorithms

class InsertionSortTests: XCTestCase {
    
    let myArray = [8,5,9,4,2,6,7,1,3]
    let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInsertionSort() {
        XCTAssertEqual(insertionSort(myArray), [1,2,3,4,5,6,7,8,9])
    }

    func testInsertioSortWithSorted() {
        XCTAssertEqual(insertionSort(list), list.sorted())
    }
    
    func testInsertionSortWithRandomArrayOf100Numbers() {
        var randomArray = [Int]()
        for _ in 1...100 {
            let randomNumber = Int.random(in: -1000...1000)
            randomArray.append(randomNumber)
        }
        print(randomArray)
        print(insertionSort(randomArray))
        XCTAssertEqual(insertionSort(randomArray), randomArray.sorted())
    }
}
