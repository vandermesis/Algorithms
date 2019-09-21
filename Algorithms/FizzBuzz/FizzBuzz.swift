//
//  FizzBuzz.swift
//  Algorithms
//
//  Created by Marek Skrzelowski on 21/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import Foundation

func fizzBuzz(_ array: [Int]) -> [String] {
    var fizzbuzzArray = [String]()
    for number in array {
        if number % 3 == 0 && number % 5 == 0 {
            fizzbuzzArray.append("Fizz Buzz")
        } else if number % 3 == 0 {
            fizzbuzzArray.append("Fizz")
        } else if number % 5 == 0 {
            fizzbuzzArray.append("Buzz")
        } else {
            fizzbuzzArray.append("\(number)")
        }
    }
    return fizzbuzzArray
}
