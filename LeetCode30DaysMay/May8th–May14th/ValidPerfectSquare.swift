/*
    Question -  Valid Perfect Square
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/535/week-2-may-8th-may-14th/3324/
 */

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        if num < 2 { return true }
        var left = 2, right = num/2
        
        while left <= right{
            var middle = right + (left - right) / 2
            if middle * middle == num { return true }
            
            if middle * middle < num{
                left = middle + 1
            }else{
                right = middle - 1
            }
        }
        return false
    }
}
