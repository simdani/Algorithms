import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?

    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    var ans = 0

    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        ans = 0
        dfs(node: root, L: L, R: R)
        return ans
    }

    fileprivate func dfs(node: TreeNode?, L: Int, R: Int) {
        guard let node = node else { return }

        if L <= node.val && node.val <= R {
            ans += node.val
        }
        if L < node.val {
            dfs(node: node.left, L: L, R: R)
        }
        if node.val < R {
            dfs(node: node.right, L: L, R: R)
        }
    }
}


var root = TreeNode(10)
var leaf1 = TreeNode(5)
var leaf2 = TreeNode(15)
var leaf3 = TreeNode(3)
var leaf4 = TreeNode(7)
var leaf5 = TreeNode(18)

let L = 7
let R = 15

root.left = leaf4
leaf4.left = leaf3
leaf4.right = leaf1

root.right = leaf2
leaf2.left = nil
leaf2.right = leaf5

print(Solution().rangeSumBST(root, L, R))
