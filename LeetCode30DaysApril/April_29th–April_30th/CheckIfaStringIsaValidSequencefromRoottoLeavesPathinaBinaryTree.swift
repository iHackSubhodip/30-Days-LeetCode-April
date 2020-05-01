/*
    Question - Check If a String Is a Valid Sequence from Root to Leaves Path in a Binary Tree
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/532/week-5/3315/
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
    func isValidSequence(_ root: TreeNode?, _ arr: [Int]) -> Bool {
        return checkValidity(root, arr, 0)
    }

    func checkValidity(_ root: TreeNode?,_ arr: [Int],_ index: Int) -> Bool{
        guard let root = root, index < arr.count else { return false }
        if root.left == nil && root.right == nil {
            return root.val == arr[index] && index == arr.count - 1
        }
        if root.val == arr[index]{
            return checkValidity(root.left, arr, index+1) || checkValidity(root.right, arr, index+1)
        }
        return false
    }

}
