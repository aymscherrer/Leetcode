//: Playground - noun: Level Order Traversal Tree

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
    
        func levelOrder(_ root: TreeNode?) -> [[Int]] {
    
            var result = [[Int]]()
            var stack = [TreeNode]()
            guard let root = root else { return result }
    
            stack.append(root)
    
            while !stack.isEmpty {
                var count = stack.count - 1
                var data = [Int]()
                
                while count >= 0 {
                    let node = stack.removeFirst()
                    data.append(node.val)
                    
                    if node.left != nil {
                        stack.append(node.left!)
                    }
                    
                    if node.right != nil {
                        stack.append(node.right!)
                    }
                    count -= 1
            }
            result.append(data)
        }
        return result
    }
}

private let solution = Solution()
private var root = TreeNode(3)

root.left = TreeNode(9)
root.right = TreeNode(20)
root.right?.left = TreeNode(15)
root.right?.right = TreeNode(7)

solution.levelOrder(root)



