/*
 Question - Kth Smallest Element in a BST
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/536/week-3-may-15th-may-21st/3335/
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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var stackNode = [TreeNode](), current = root, k = k
        
        while current != nil || !stackNode.isEmpty{
            if current != nil{
                stackNode.append(current!)
                current = current!.left
            }else{
                let node = stackNode.removeLast()
                k -= 1
                if k == 0{
                    return node.val
                }
                current = node.right
            }
        }
        return -1
    }
}
