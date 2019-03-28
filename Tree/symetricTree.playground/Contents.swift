//: Playground - noun: Symmetric Tree

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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        
        guard let root = root else { return true }
        
        return isTreeSymmetric(root.left, root.right)
    }
    
    func isTreeSymmetric(_ node1: TreeNode?, _ node2: TreeNode?) -> Bool {

        if node1 == nil && node2 == nil { return true }
        if node1 == nil || node2 == nil { return false }
        
        return node1!.val == node2!.val && isTreeSymmetric(node1!.left, node2!.right) && isTreeSymmetric(node1!.right, node2!.left)
    }
}

private let solution = Solution()
private var root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(2)
root.left?.left = TreeNode(3)
root.left?.right = TreeNode(4)
root.right?.left = TreeNode(4)
root.right?.right = TreeNode(3)
solution.isSymmetric(root)




