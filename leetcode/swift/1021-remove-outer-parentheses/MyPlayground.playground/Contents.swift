import Foundation

class Solution {
    func removeOuterParentheses(_ S: String) -> String {
        var res = [Character]()
        var openParen = 0

        for char in S {
            if char == "(" && openParen > 0 {
                res.append(char)
            }
            if char == ")" && openParen > 1 {
                res.append(char)
            }

            openParen = (char == "(") ? openParen + 1 : openParen - 1
        }

        return String(res)
    }
}

print(Solution().removeOuterParentheses("(()())(())"))
