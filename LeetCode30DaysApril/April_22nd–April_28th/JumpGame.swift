/*
    Question - Jump Game
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/531/week-4/3310/
 */

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var maximumIndex = nums[0]
        for (currentIndex, value) in nums.enumerated(){
            if currentIndex > maximumIndex{
                return false
            }
            maximumIndex = max(maximumIndex, currentIndex+value)
        }
        return true
    }
}
