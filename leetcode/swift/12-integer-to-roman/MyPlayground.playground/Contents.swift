import Foundation

class Solution {
    func intToRoman(_ num: Int) -> String {
        let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let romanLiterals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        var number = num
        var result = ""

        for i in 0..<values.count {
            while number >= values[i] {
                number -= values[i]
                result.append(romanLiterals[i])
            }
        }
        return result
    }
}

print(Solution().intToRoman(7))
