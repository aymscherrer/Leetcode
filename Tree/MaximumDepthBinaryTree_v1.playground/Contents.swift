//: Playground - noun: Maximum Depth of Binary Tree v1
// Bottom-up Solution

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
    func maxDepth(_ root: TreeNode?) -> Int {
        
        guard let root = root else {
            return 0
        }
        
        let left_depth = maxDepth(root.left)
        let right_depth = maxDepth(root.right)

        return max(left_depth, right_depth) + 1
    }
}

private let solution = Solution()
private var root = TreeNode(3)

root.left = TreeNode(2)
root.right = TreeNode(20)
root.right?.left = TreeNode(15)
root.right?.right = TreeNode(7)

solution.maxDepth(root)
