//: Playground - noun: a place where people can play
// Pre Order Traversal Tree

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

    func preorderTraversal(_ root: TreeNode?) -> [Int] {

        var data = [Int]()
        var stack = [TreeNode]()
        guard let root = root else { return data }

        stack.append(root)

        while stack.count > 0 {

            let node = stack[stack.count - 1]
            stack.remove(at: stack.count - 1)

            data.append(node.val)
            
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

root.left = TreeNode(2)
root.left?.left = TreeNode(4)
root.right = TreeNode(3)

solution.preorderTraversal(root)



