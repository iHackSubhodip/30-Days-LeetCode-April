/*
    Question - Contiguous Array
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3298/
 */

class Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        var hashMap = [Int : Int](), maxLength = 0, count = 0
        hashMap[0] = -1
        for i in 0..<nums.count{
            count += (nums[i] == 1 ? 1 : -1)
            if let value = hashMap[count]{
                maxLength = max(maxLength, i - value)
            }else{
                hashMap[count] = i
            }
        }
        return maxLength
    }
}
