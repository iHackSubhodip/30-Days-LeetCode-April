/*
    Question -  Single Element in a Sorted Array
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/535/week-2-may-8th-may-14th/3327/
 */

class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        var low = 0, high = nums.count - 1
        
        while low < high{
            var mid = low + (high - low) / 2
            if mid % 2 == 1{
                mid -= 1
            }
            
            if nums[mid] == nums[mid + 1]{
                low = mid + 2
            }else{
                high = mid
            }
        }
        
        return nums[low]
    }
}
