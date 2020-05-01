/*
    Question - Move Zeroes
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3286/
 */

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var nonZeroIndex = 0
        
        for num in nums where num != 0{
            nums[nonZeroIndex] = num
            nonZeroIndex += 1
        }
        
        while nonZeroIndex < nums.count{
            nums[nonZeroIndex] = 0
            nonZeroIndex += 1
        }
    }
}
