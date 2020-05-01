/*
    Question -  First Bad Version
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/534/week-1-may-1st-may-7th/3316/
 */

/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 1, right = n, middle = 0
        
        while left < right {
            middle = left + (right - left) / 2
            if !isBadVersion(middle){
               left = middle + 1
            }else{
                right = middle
            }
        }
        
        return left
    }
}
