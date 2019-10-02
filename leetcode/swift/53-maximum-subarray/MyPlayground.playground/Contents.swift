class Solution {
  func maxSubArray(_ nums: [Int]) -> Int {
    guard nums.count != 0 else { return 0 }

    var temp = 0
    var output = Int.min

    for num in nums {
      temp = max(temp + num, num)
      output = max(output, temp)
    }

    return output
  }
}

debugPrint(Solution().maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))
