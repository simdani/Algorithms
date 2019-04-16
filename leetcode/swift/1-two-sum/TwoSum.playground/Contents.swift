import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.isEmpty {
            return [0]
        }
        var buff_dict: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let existing = buff_dict[nums[i]] {
                return [existing, i]
            } else {
                buff_dict[target - nums[i]] = i
            }
        }

        return [0]
    }
}

print(Solution().twoSum([2, 7, 11, 15], 9))
