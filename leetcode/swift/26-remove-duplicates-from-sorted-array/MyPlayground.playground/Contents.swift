class Solution {
  func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count != 0 else { return 0 }

    var index = 0
    for i in 0..<nums.count {
      if nums[index] != nums[i] {
        index += 1
        nums[index] = nums[i]
      }
    }

    return index + 1
  }
}

var nums = [0,0,1,1,1,2,2,3,3,4]
print(Solution().removeDuplicates(&nums))
