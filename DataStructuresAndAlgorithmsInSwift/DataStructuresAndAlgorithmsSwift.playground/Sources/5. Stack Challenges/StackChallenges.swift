import Foundation

public enum StackChallenges {

    private struct Stack<Element> {
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

    // Challenge 1. Reverse an array
    public static func reverse<T>(_ elements: [T]) {
        var stack = Stack<T>()

        for element in elements {
            stack.push(element)
        }

        while let value = stack.pop() {
            print(value)
        }
    }

    // Challenge 2. Balance the parentheses
    public static func balanceTheParantheses(from text: String) -> Bool {
        var stack = Stack<Character>()

        for char in text {
            if char == "(" {
                stack.push(char)
            } else if char == ")" {
                if stack.isEmpty {
                    return false
                } else {
                    stack.pop()
                }
            }
        }

        return stack.isEmpty
    }
}
