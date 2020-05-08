/*
    Question -  Cousins in Binary Tree
    Link - > https://leetcode.com/explore/challenge/card/may-leetcoding-challenge/534/week-1-may-1st-may-7th/3322/
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil;self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right:TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        let xDepthAndParent = parentAndDepth(nil, root, x, 0)
        let yDepthAndParent = parentAndDepth(nil, root, y, 0)
        return xDepthAndParent.0 == yDepthAndParent.0 && xDepthAndParent.1?.val != yDepthAndParent.1?.val
    }
    
    func parentAndDepth(_ parent: TreeNode?,_ current: TreeNode?,_ x: Int,_ depth: Int) -> (Int, TreeNode?){
        if current == nil { return (Int.max, nil) }
        if current!.val == x{ return (depth, parent) }
        let left = parentAndDepth(current, current?.left, x, depth+1)
        let right = parentAndDepth(current, current?.right, x, depth+1)
        return left.0 != Int.max ? left : right
    }
}
