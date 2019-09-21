//
//  FizzBuzzTests.swift
//  AlgorithmsTests
//
//  Created by Marek Skrzelowski on 21/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import XCTest
@testable import Algorithms

class FizzBuzzTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFizzBuzz() {
        let numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
        let fizzbuzz = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "Fizz Buzz"]
        XCTAssertEqual(fizzBuzz(numbers), fizzbuzz)
    }
    
    func testFizzBuzzWith3() {
        XCTAssertEqual(fizzBuzz([3]), ["Fizz"])
    }
    
    func testFizzBuzzWith5() {
        XCTAssertEqual(fizzBuzz([5]), ["Buzz"])
    }
    
    func testFizzBuzzWith15() {
        XCTAssertEqual(fizzBuzz([15]), ["Fizz Buzz"])
    }
    
    func testFizzBuzzWith0() {
        XCTAssertEqual(fizzBuzz([0]), ["Fizz Buzz"])
    }
    
    func testFizzBuzzWith1() {
        XCTAssertEqual(fizzBuzz([1]), ["1"])
    }

}
