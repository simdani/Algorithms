import Foundation

class Solution {

  private struct Stack<Element> {
    fileprivate var array: [Element] = []

    mutating func push(_ element: Element) {
      array.append(element)
    }

    mutating func pop() -> Element? {
      return array.popLast()
    }

    func peek() -> Element? {
      return array.last
    }

    var isEmpty: Bool {
      return array.isEmpty
    }
  }

  func isValid(_ s: String) -> Bool {
    guard s.count % 2 != 1 else { return false }
    var stack = Stack<Character>()
    for char in s {
      if (isOpening(char)) {
        stack.push(char)
      } else if stack.isEmpty || char != closingBracket(for: stack.pop()!) {
        return false
      }
    }
    return stack.isEmpty
  }

  private func isOpening(_ char: Character) -> Bool {
    return char == "(" || char == "[" || char == "{"
  }

  private func closingBracket(for char: Character) -> Character {
    switch char {
      case "(":
        return ")"
      case "[":
        return "]"
      case "{":
        return "}"
      default:
        fatalError()
    }
  }
}

debugPrint(Solution().isValid("([)]"))
