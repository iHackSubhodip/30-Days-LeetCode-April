/*
    Question - Subarray Sum Equals K
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/531/week-4/3307/
 */

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count != 0 else { return 0 }
        var sum = 0, result = 0, map = [Int: Int]()
        map[0] = 1
        for num in nums{
            sum += num
            if let value = map[sum-k]{
                result += value
            }
            map[sum] = (map[sum] ?? 0) + 1
        }
        return result
    }
}
