/*
 Question - Contiguous Array
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/537/week-4-may-22nd-may-28th/3341/
 */

class Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        var map = [Int: Int](), count = 0, maxLength = 0
        
        for i in 0..<nums.count{
            count += (nums[i] == 1 ? 1 : -1)
            if count == 0{
                maxLength = max(maxLength, i+1)
            }
            
            if let value = map[count]{
                maxLength = max(maxLength, i - value)
            }else{
                map[count] = i
            }
        }
        
        return maxLength
    }
}

