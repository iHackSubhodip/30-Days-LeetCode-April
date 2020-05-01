/*
    Question - Product of Array Except Self
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/530/week-3/3300/
 */

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var last = 1, result = [Int]()
        
        for num in nums{
            result.append(last)
            last *= num
        }
        last = 1
        
        for i in stride(from: nums.count - 1, through: 0, by: -1){
            result[i] *= last
            last *= nums[i]
        }
        
        return result
    }
}
