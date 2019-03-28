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
    private var result = 0

    func maxDepth(_ root: TreeNode?) -> Int {
        
        guard let root = root else { return result }
        
        topDownTree(root, depth: 1, result: &result)

        return result
    }
    
    func topDownTree(_ root: TreeNode?, depth: Int, result: inout Int) {

        guard let node = root else { return }
        
        if node.right == nil && node.left == nil {
            result =  max(result, depth)
        }
        
        topDownTree(node.left, depth: depth + 1, result: &result)
        topDownTree(node.right, depth: depth + 1, result: &result)
    }
}

private let solution = Solution()
private var root = TreeNode(3)

root.left = TreeNode(2)
root.right = TreeNode(20)
root.right?.left = TreeNode(15)
root.right?.right = TreeNode(7)

solution.maxDepth(root)

