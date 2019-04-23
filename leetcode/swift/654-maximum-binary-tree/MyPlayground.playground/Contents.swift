
 public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
 }

class Solution {
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        return construct(nums, start: 0, end: nums.count - 1)
    }

    fileprivate func construct(_ nums: [Int], start: Int, end: Int) -> TreeNode? {
        if start > end {
            return nil
        }

        var idMax = start
        for i in (start)...end {
            if nums[i] > nums[idMax] {
                idMax = i
            }
        }

        let root = TreeNode(nums[idMax])
        root.left = construct(nums, start: start, end: idMax - 1)
        root.right = construct(nums, start: idMax + 1, end: end)

        return root
    }
}

print(Solution().constructMaximumBinaryTree([3, 2, 1, 6, 0, 5]))
