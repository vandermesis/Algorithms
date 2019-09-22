//
//  Stack Data Structure.swift
//  Algorithms
//
//  Created by Marek Skrzelowski on 22/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import Foundation

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
