/*
    Question - Search in Rotated Sorted Array
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/530/week-3/3304/
 */

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1, mid = 0
        while left <= right{
            let mid = (right - left) / 2 + left
            if nums[mid] == target{ return mid }
            
            if nums[mid] >= nums[left]{
                if nums[mid] > target && target >= nums[left]{
                    right = mid - 1
                }else{
                    left = mid + 1
                }
            }else{
                if nums[mid] < target && target <= nums[right]{
                    left = mid + 1
                }else{
                    right = mid - 1
                }
            }
        }
        return -1
    }
}
