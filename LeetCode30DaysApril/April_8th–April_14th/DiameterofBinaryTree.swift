/*
    Question - Diameter of Binary Tree
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3293/
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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        let leftHeight = maxDepth(root.left), rightHeight = maxDepth(root.right)
        let leftDiameter = diameterOfBinaryTree(root.left), rightDiameter = diameterOfBinaryTree(root.right)
        return max(leftHeight + rightHeight, max(leftDiameter, rightDiameter))
    }

    func maxDepth(_ root: TreeNode?) -> Int{
        guard let root = root else { return 0 }
        return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
}
