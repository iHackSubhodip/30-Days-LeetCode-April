/*
    Question - Single Number
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3283/
 */

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        
        for num in nums{
            result ^= num
        }
        return result
    }
}
