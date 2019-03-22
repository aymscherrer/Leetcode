//: Playground - noun: Path Sum v1

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
    
    private var dataArray = [Int]()
    
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        
        guard let root = root else { return false }
        
        let result = isSumTree(root, sum, data: &dataArray)
        
        return result
        
    }
    
    func isSumTree(_ root: TreeNode?, _ sum: Int, data: inout [Int]) -> Bool {
        
        guard let node = root else { return false }
        
        if node.left == nil && node.right == nil {
            if node.val == sum {
                
                data.append(node.val)
                
                return true
            } else {
                return false
            }
        }
        
        if isSumTree(node.left, sum - node.val, data: &data) {
            data.append(node.val)
            return true
        }
        
        if isSumTree(node.right, sum - node.val, data: &data) {
            data.append(node.val)
            return true
        }
        
        return false
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
