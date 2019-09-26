import UIKit

let numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

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

fizzBuzz([30])
fizzBuzz(numbers)

func fizzBuzzSwitch(input: Int) -> String {
    var str: String = "The result is "
    switch (input % 3 == 0, input % 5 == 0) {
    case (true, false):
        str += "Fizz"
    case (false, true):
        str += "Buzz"
    case (true, true):
        str += "FizzBuzz"
    default:
        str += String(input)
    }
    return str
}

fizzBuzzSwitch(input: 3)
