//: Playground - noun: InOrder Traversal Tree

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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var data: [Int] = []

        internalPreOrder(root: root, result: &data)
        return data
    }

    func internalPreOrder(root: TreeNode?, result: inout [Int]) {

        guard let root = root else { return }
        internalPreOrder(root: root.left, result: &result)
        result.append(root.val)
        internalPreOrder(root: root.right, result: &result)
    }
}

private let solution = Solution()
private var root = TreeNode(1)

root.left = TreeNode(2)
root.left?.left = TreeNode(4)
root.right = TreeNode(3)

solution.inorderTraversal(root)



