# Given an array of integers, return indeces of two numbers such taht
# they add up to a specific target

class Solution:
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        if len(nums) <= 1:
            return False
        buff_dict = {}
        for i in range(len(nums)):
            if nums[i] in buff_dict:
                return [buff_dict[nums[i]], i]
            else:
                buff_dict[target - nums[i]] = i

        """
        naive approach:

        for i, item1 in enumerate(nums):
            for j, item2 in enumerate(nums):
                if item1 + item2 == target and i != j:
                    return [i, j]

        return False
        """

if __name__ == "__main__":
    result = Solution().twoSum([2, 7, 11, 15], 9)
    print(result)
    
