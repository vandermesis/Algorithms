import UIKit

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

let beverages = Node(value: "beverages")

let hotBeverages = Node(value: "hot")
let coldBeverages = Node(value: "cold")

beverages.add(child: hotBeverages)
beverages.add(child: coldBeverages)

let tea = Node(value: "tea")
let coffee = Node(value: "coffee")
let cocoa = Node(value: "cocoa")

hotBeverages.add(child: tea)
hotBeverages.add(child: coffee)
hotBeverages.add(child: cocoa)

let greenTea = Node(value: "green")
let blackTea = Node(value: "black")
let chaiTea = Node(value: "chai")

tea.add(child: greenTea)
tea.add(child: blackTea)
tea.add(child: chaiTea)

let soda = Node(value: "soda")
let milk = Node(value: "milk")

coldBeverages.add(child: soda)
coldBeverages.add(child: milk)

let gingerAle = Node(value: "ginger ale")
let bitterLemon = Node(value: "bitter lemon")

soda.add(child: gingerAle)
soda.add(child: bitterLemon)

print(beverages)

beverages.search(value: "bubble")
beverages.search(value: "green")
