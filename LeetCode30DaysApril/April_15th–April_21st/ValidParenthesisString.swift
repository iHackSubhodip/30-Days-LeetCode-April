/*
    Question - Valid Parenthesis String
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/530/week-3/3301/
 */

class Solution {
    func checkValidString(_ s: String) -> Bool {
        var tuple = (0,0)
        
        for char in s{
            tuple.1 += (char != ")" ? 1 : -1)
            if tuple.1 < 0 { return false }
            tuple.0 += (char == "(" ? 1 : -1)
            tuple.0 = max(tuple.0, 0)
        }
        
        return tuple.0 == 0
    }
}
