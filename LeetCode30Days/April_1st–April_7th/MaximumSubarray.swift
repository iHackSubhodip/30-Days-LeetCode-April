/*
    Question - Maximum Subarray
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3285/
 */

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var currentMax = nums[0], globalMax = nums[0]
        
        for i in 1..<nums.count{
            currentMax = max(currentMax + nums[i], nums[i])
            globalMax = max(currentMax, globalMax)
        }
        return globalMax
    }
}
