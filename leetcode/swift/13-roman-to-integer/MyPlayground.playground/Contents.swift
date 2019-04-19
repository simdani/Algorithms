import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanIntDict = ["M": 1000, "D": 500, "C": 100, "L": 50, "X": 10, "V": 5, "I": 1]
        var prev = 0
        var result = 0
        for char in s.reversed() {
            var curr = romanIntDict[String(char)]!
            if prev > curr {
                result -= curr
            } else {
                result += curr
            }
            prev = curr
        }
        return result
    }
}

print(Solution().romanToInt("IV"))
