//: Playground - noun: Construct Binary Tree from Inorder and Postorder Traversal

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
    private var postIdx = 0
    private var inIdx = 0
    
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        inIdx = inorder.count - 1
        postIdx = postorder.count - 1
        return buildTree(inorder, postorder, Int.max)
    }
    
    func buildTree(_ inorder: [Int], _ postorder: [Int], _ root: Int) -> TreeNode? {
        if inIdx < 0 || inorder[inIdx] == root {
            return nil
        }
        let node = TreeNode(postorder[postIdx])
        postIdx -= 1
        node.right = buildTree(inorder, postorder, node.val);
        inIdx -= 1
        node.left = buildTree(inorder, postorder, root);
        return node;
    }
}
