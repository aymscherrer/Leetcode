//: Playground - noun: a place where people can play
// Post Order Traversal Tree

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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        
        var data: [Int] = []
        
        internalPreOrder(root: root, result: &data)
        
        return data
    }
    
    func internalPreOrder(root: TreeNode?, result: inout [Int]) {
        
        guard let root = root else { return }
        
        internalPreOrder(root: root.left, result: &result)
        internalPreOrder(root: root.right, result: &result)
        result.append(root.val)
    }
}

private let solution = Solution()
private var root = TreeNode(1)
root.right = TreeNode(2)
root.right?.left = TreeNode(3)

solution.postorderTraversal(root)




