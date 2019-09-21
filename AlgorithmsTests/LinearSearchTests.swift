//
//  LinearSearchTests.swift
//  AlgorithmsTests
//
//  Created by Marek Skrzelowski on 21/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import XCTest
@testable import Algorithms

class LinearSearchTests: XCTestCase {
    
    let intArray = [1,5,4,7,9,4,6,8,3,0]
    let stringArray = ["marek", "marta", "aga"]

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLinearSearchWithArrayContainsInt() {
        XCTAssertEqual(linearSearch(intArray, 1), 0)
    }
    
    func testLinearSearchWithArrayContainsString() {
        XCTAssertEqual(linearSearch(stringArray, "aga"), 2)
    }

    func testLinearSearchWithArrayDoesntContainsInt() {
        XCTAssertNil(linearSearch(intArray, 2))
    }
    
    func testLinearSearchWithArrayDoesntContainsString() {
        XCTAssertNil(linearSearch(stringArray, "hello"))
    }
}
