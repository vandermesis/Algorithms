//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Marek Skrzelowski on 30/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import Foundation

func insertionSort<T>(_ array: [T], _ isOrderedBefore: (T,T) -> Bool) -> [T] {
    var sortedArray = array
    for i in 1..<sortedArray.count {
        var count = i
        let numToInsert = sortedArray[count]
        while count > 0 && isOrderedBefore(numToInsert, sortedArray[count-1]) {
            sortedArray[count] = sortedArray[count-1]
            count -= 1
        }
        sortedArray[count] = numToInsert
    }
    return sortedArray
}
