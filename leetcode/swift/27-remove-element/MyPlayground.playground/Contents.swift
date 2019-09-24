class Solution {
  func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    nums = nums.filter { $0 != val }
    return nums.count
  }
}

var nums = [0, 1, 2, 2, 3, 0, 4, 2]
debugPrint(Solution().removeElement(&nums, 2))
