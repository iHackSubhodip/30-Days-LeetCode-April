/*
    Question - Construct Binary Search Tree from Preorder Traversal
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/530/week-3/3305/
 */

public class TreeNode{
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int){
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty else { return nil }
        var newRoot: TreeNode? = nil
        for item in preorder {
            push(item, &newRoot)
        }
        return newRoot
    }
    
    func push(_ item: Int, _ root: inout TreeNode?) {
        guard let root1 = root else {
            root = TreeNode(item)
            return
        }
        if item > root1.val {
            push(item, &root1.right)
        } else if item < root1.val {
            push(item, &root1.left)
        }
    }
}
