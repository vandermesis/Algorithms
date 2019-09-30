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
            print(sortedArray)
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
            print(sortedArray)
            i -= 1
        }
    }
    return sortedArray
}

insertionSortTwoLoops(list)
