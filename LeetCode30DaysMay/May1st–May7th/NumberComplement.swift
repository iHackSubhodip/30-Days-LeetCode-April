/*
    Question -  Number Complement
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/534/week-1-may-1st-may-7th/3319/
 */

class Solution {
    func findComplement(_ num: Int) -> Int {
        var i = 1
        
        while i < num{
            i = (i<<1) + 1
        }
        
        return i ^ num
    }
}
