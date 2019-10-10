let array = [7, 2, 6, 3, 9, 1, 0, 5]

func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    let middleIndex = array.count / 2
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    print(leftArray, "|", rightArray)
    return merge(leftArray, rightArray)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
  var leftIndex = 0
  var rightIndex = 0
  var orderedArray: [Int] = []
  
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
  print("Ordered array ->", orderedArray)
  return orderedArray
}

mergeSort(array)

func mergeSortBottomUp<T>(_ a: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
  let n = a.count

  var z = [a, a]
  var d = 0

  var width = 1
  while width < n {

    var i = 0
    while i < n {

      var j = i
      var l = i
      var r = i + width

      let lmax = min(l + width, n)
      let rmax = min(r + width, n)

      while l < lmax && r < rmax {                
        if isOrderedBefore(z[d][l], z[d][r]) {
          z[1 - d][j] = z[d][l]
          l += 1
        } else {
          z[1 - d][j] = z[d][r]
          r += 1
        }
        j += 1
      }
      while l < lmax {
        z[1 - d][j] = z[d][l]
        j += 1
        l += 1
      }
      while r < rmax {
        z[1 - d][j] = z[d][r]
        j += 1
        r += 1
      }

      i += width*2
    }

    width *= 2
    d = 1 - d      // 5
  }
  return z[d]
}

mergeSortBottomUp(array, <)
