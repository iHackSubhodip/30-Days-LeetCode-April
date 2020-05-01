/*
    Question - Binary Tree Maximum Path Sum
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/532/week-5/3314/
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
    
    var maxValue = Int.min
    func maxPathSum(_ root: TreeNode?) -> Int {
        maxValueFunc(root)
        return maxValue
    }
    
    func maxValueFunc(_ root: TreeNode?) -> Int{
        guard let root = root else { return 0 }
        let left = max(maxValueFunc(root.left), 0)
        let right = max(maxValueFunc(root.right), 0)
        maxValue = max(maxValue, left + right + root.val)
        return max(left, right) + root.val
    }
}
