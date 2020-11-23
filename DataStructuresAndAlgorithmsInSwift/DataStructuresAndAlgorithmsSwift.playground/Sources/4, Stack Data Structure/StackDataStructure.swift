import Foundation

public enum StackDataStructure {

    // Example of things you can stack: pancakes, books, paper, cash
    // only two essential opeartions: push and pop
    // LIFO (last in first out)
    // Push and pop both have O(1) time complexity
    // Stacks are crucial to problems that search trees and graphs.

    public struct Stack<Element> {
        private var storage = [Element]()

        public init() {}

        public mutating func push(_ element: Element) {
            storage.append(element)
        }

        @discardableResult
        public mutating func pop() -> Element? {
            storage.popLast()
        }

        public func peek() -> Element? {
            storage.last
        }

        public var isEmpty: Bool {
            peek() == nil
        }
    }
}

extension StackDataStructure.Stack: CustomStringConvertible {

    public var description: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        -----------
        """
    }
}

extension StackDataStructure.Stack: ExpressibleByArrayLiteral {

    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
