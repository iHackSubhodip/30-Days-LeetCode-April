/*
 Question - Odd Even Linked List
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/536/week-3-may-15th-may-21st/3331/
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        if head == nil { return nil }
        var odd: ListNode? = head, even: ListNode? = head?.next, evenHead: ListNode? = even
        while even != nil && even?.next != nil{
            odd?.next = odd?.next?.next
            even?.next = even?.next?.next
            odd = odd?.next
            even = even?.next
        }
        odd?.next = evenHead
        return head
    }
}
