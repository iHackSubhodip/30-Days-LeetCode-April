/*
    Question - Bitwise AND of Numbers Range
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/531/week-4/3308/
 */

class Solution {
    func rangeBitwiseAnd(_ m: Int, _ n: Int) -> Int {
        var m = m, n = n
        while m < n{
            n = n & (n-1)
        }
        return m & n
    }
}
