//
//  MergeSort.swift
//  Algorithms
//
//  Created by Marek Skrzelowski on 09/10/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import Foundation

func mergeSortTopDown<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }
    let middleIndex = array.count / 2
    let leftArray = mergeSortTopDown(Array(array[0..<middleIndex]))
    let rightArray = mergeSortTopDown(Array(array[middleIndex..<array.count]))
    
    print(leftArray, "|", rightArray)
    return mergeTopDown(leftArray, rightArray)
}

func mergeTopDown<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
  var leftIndex = 0
  var rightIndex = 0
  var orderedArray: [T] = []
  
  while leftIndex < left.count && rightIndex < right.count {
    
    if left[leftIndex] < right[rightIndex] {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    } else if left[leftIndex] > right[rightIndex] {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    } else {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
  }

  while leftIndex < left.count {
    orderedArray.append(left[leftIndex])
    leftIndex += 1
  }

  while rightIndex < right.count {
    orderedArray.append(right[rightIndex])
    rightIndex += 1
  }
  
  return orderedArray
}
