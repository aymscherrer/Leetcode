//: Playground - noun: Path Sum v2

import Foundation

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
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let node = root else { return false }
        
        if node.left == nil && node.right == nil {
            if node.val == sum {
                return true
            }
            return false
        }
        return hasPathSum(node.left, sum-node.val) || hasPathSum(node.right, sum-node.val)
    }
}


private let solution = Solution()
private var root = TreeNode(5)

root.left = TreeNode(4)
root.left?.left = TreeNode(11)
root.left?.left?.left = TreeNode(7)
root.left?.left?.right = TreeNode(2)

root.right = TreeNode(8)
root.right?.left = TreeNode(13)
root.right?.right = TreeNode(4)
root.right?.right?.right = TreeNode(1)

solution.hasPathSum(root, 22)

