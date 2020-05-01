/*
    Question -  Middle of the Linked List
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3290/
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard head != nil else{
            return nil
        }
        
        var slow = head, fast = head
        
        while fast != nil && fast?.next != nil{
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return slow
    }
}
