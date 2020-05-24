/*
 Question - Construct Binary Search Tree from Preorder Traversal
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/537/week-4-may-22nd-may-28th/3339/
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty else { return nil }
        var root: TreeNode? = nil
        for item in preorder{
            push(&root, item)
        }
        return root
    }
    
    func push(_ root: inout TreeNode?,_ item: Int){
        guard let node = root else {
            root = TreeNode(item)
            return
        }
        
        if item > node.val{
            push(&node.right, item)
        }else{
            push(&node.left, item)
        }
    }
}
