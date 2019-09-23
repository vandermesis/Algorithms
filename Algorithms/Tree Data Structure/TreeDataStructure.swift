//
//  TreeDataStructure.swift
//  Algorithms
//
//  Created by Marek Skrzelowski on 23/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import Foundation

class Node<T> {
    var value: T
    var children: [Node] = []
    var parent: Node?
    init(value: T) {
        self.value = value
    }
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
    func del(child: Node) {
        children.removeAll()
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        var text = "\(value)"
        if !children.isEmpty {
            text += "{" + children.map{ $0.description }.joined(separator: ",") + "}"
        }
        return text
    }
}

extension Node where T: Equatable {
    func search(value: T) -> Node? {
        if value == self.value {
            return self
        }
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
    return nil
    }
}
