import UIKit

var array = [ 8, 3, 5, 4, 6 ]

func insertionSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    for n in 1..<sortedArray.count {
        var i = n
        while i > 0 && sortedArray[i] < sortedArray[i-1] {
            let tmp = sortedArray[i]
            sortedArray[i] = sortedArray[i-1]
            sortedArray[i-1] = tmp
            i -= 1
        }
    }
    return sortedArray
}

insertionSort(array)

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insertionSort(list)

func insertionSortTwoLoops(_ array: [Int]) -> [Int] {
    var sortedArray = array
    for n in 1..<sortedArray.count {
        var i = n
        for num in sortedArray where i > 0 && sortedArray[i] < sortedArray[i-1] {
            let tmp = sortedArray[i]
            sortedArray[i] = sortedArray[i-1]
            sortedArray[i-1] = tmp
            i -= 1
        }
    }
    return sortedArray
}

insertionSortTwoLoops(list)

func insertionSortOptimized(_ array: [Int]) -> [Int] {
  var a = array
  for x in 1..<a.count {
    var y = x
    let temp = a[y]
    while y > 0 && temp < a[y - 1] {
      a[y] = a[y - 1]                // 1
      y -= 1
    }
    a[y] = temp                      // 2
  }
  return a
}

insertionSortOptimized(list)

func insertionSortMyOptimized(_ array: [Int]) -> [Int] {
    var sortedArray = array
    for i in 1..<sortedArray.count {
        var count = i
        let numToInsert = sortedArray[count]
        while count > 0 && numToInsert < sortedArray[count-1] {
            sortedArray[count] = sortedArray[count-1]
            count -= 1
        }
        sortedArray[count] = numToInsert
    }
    return sortedArray
}

insertionSortMyOptimized(list)
