//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Marek Skrzelowski on 30/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import Foundation

func insertionSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    for i in 1..<sortedArray.count {
        var count = i
        while count > 0 && sortedArray[count] < sortedArray[count-1] {
            let tmp = sortedArray[count]
            sortedArray[count] = sortedArray[count-1]
            sortedArray[count-1] = tmp
            count -= 1
        }
    }
    return sortedArray
}
