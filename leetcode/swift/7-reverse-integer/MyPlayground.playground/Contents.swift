import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var number = x
        var result = 0

        while number != 0 {
            let tail = number % 10
            let newResult = result * 10 + tail
            if ((newResult - tail) / 10 != result || newResult > INT32_MAX || newResult < -INT32_MAX) {
                return 0
            }
            result = newResult
            number /= 10
        }

        return result
    }
}

print(Solution().reverse(-123))
