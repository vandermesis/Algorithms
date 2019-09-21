import UIKit

func linearSearch<T: Equatable>(_ input: [T], _ object: T) -> Int? {
    for i in 0..<input.count where input[i] == object {
        return i
    }
    return nil
}

let intArray = [1,5,4,7,9,4,6,8,3,0]
let stringArray = ["marek", "marta", "aga"]

linearSearch(intArray, 2)
linearSearch(stringArray, "aga")
