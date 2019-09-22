import UIKit

class Stack<Element> {
    var array = [Element]()
    var isEmpty: Bool {
        return array.isEmpty
    }
    var count: Int {
        return array.count
    }
    func push(element: Element) {
        array.append(element)
    }
    func pop() -> Element? {
        return array.popLast()
    }
    func peek() -> Element? {
        return array.last
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let topDiv = "***Stack***\n"
        let bottomDiv = "\n***********\n"
        let stackElements = array.map{"\($0)"}.reversed().joined(separator: "\n")
        return topDiv + stackElements + bottomDiv
    }
}

let stack = Stack<String>()
stack.push(element: "Marek")
stack.push(element: "Aga")
stack.push(element: "Marta")
print(stack)
stack.pop()
print(stack)
stack.push(element: "Leszek")
stack.peek()
print(stack)
print(stack.isEmpty)
print(stack.count)
