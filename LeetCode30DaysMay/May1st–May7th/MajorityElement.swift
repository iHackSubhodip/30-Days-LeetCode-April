/*
    Question -  Majority Element
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/534/week-1-may-1st-may-7th/3321/
 */

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var countMap = [Int: Int]()
        
        for num in nums{
            countMap[num, default: 0] += 1
        }
        
        for key in countMap.keys{
            if let count = countMap[key], count > nums.count/2{
                return key
            }
        }
        
        return -1
    }
}
