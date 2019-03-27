//: Playground - noun: Port Order Traversal V2

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
        var data = [Int]()
        var stack = [TreeNode]()
        guard let root = root else { return data }
        
        stack.append(root)
        
        while !stack.isEmpty {
            
            let node = stack.removeLast()
            
            data.insert(node.val, at: stack.startIndex)
            
            if node.left != nil {
                stack.append(node.left!)
            }
            
            if node.right != nil {
                stack.append(node.right!)
            }
        }
        return data
    }
}

private let solution = Solution()
private var root = TreeNode(1)
root.right = TreeNode(2)
root.right?.left = TreeNode(3)
solution.postorderTraversal(root)
