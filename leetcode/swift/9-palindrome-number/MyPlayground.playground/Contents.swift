import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 || x != 0 && x % 10 == 0 {
            return false
        }

        var number = x
        var sum = 0
        while number > sum {
            sum = sum * 10 + number % 10
            print(sum)
            number /= 10
        }

        return number == sum || number == sum / 10
    }
}

print(Solution().isPalindrome(121))
