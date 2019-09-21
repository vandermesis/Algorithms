//
//  BubbleSort.swift
//  Algorithms
//
//  Created by Marek Skrzelowski on 21/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import Foundation

func bubbleSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    for i in 0..<sortedArray.count {
        for j in 1..<sortedArray.count - i {
            if sortedArray[j] < sortedArray[j-1] {
                let tmp = sortedArray[j]
                sortedArray[j] = sortedArray[j-1]
                sortedArray[j-1] = tmp
            }
        }
    }
    return sortedArray
}
