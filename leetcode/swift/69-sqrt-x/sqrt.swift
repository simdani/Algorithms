class Solution {
    func mySqrt(_ x: Int) -> Int {
        var low = 1
        var high = x
        var middle: Int

        while (low <= high) {
            middle = (low + high) / 2
            if (middle * middle == x) {
                return middle
            } else if (x < middle * middle) {
                high = middle - 1
            } else {
                low = middle + 1
            }
        }

        return low - 1
    }
}

print(Solution().mySqrt(49))