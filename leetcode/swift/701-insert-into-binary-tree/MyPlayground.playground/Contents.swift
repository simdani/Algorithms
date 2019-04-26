
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
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return TreeNode(val) }

        // insert to the right subtree
        if val > root.val {
            root.right = insertIntoBST(root.right, val)
        } else {
            root.left = insertIntoBST(root.left, val)
        }

        return root
    }
}

let root = TreeNode(4)
let rootLeft = TreeNode(2)
let rootRight = TreeNode(7)
let rootLeftLeft = TreeNode(1)
let rootLeftRight = TreeNode(3)

root.left = rootLeft
root.right = rootRight
root.left?.left = rootLeftLeft
root.left?.right = rootLeftRight

func traverse(_ root: TreeNode?) {
    guard let root = root else { return }

    print(root.val)
    traverse(root.left)
    traverse(root.right)
}


print(Solution().insertIntoBST(root, 5))
traverse(root)
