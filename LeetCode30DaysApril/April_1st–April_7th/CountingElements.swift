/*
    Question - Counting Elements
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3289/
 */

class Solution {
    func countElements(_ arr: [Int]) -> Int {
        var setContainer = Set<Int>(), count = 0
        for val in arr{
            setContainer.insert(val)
        }
        
        for val in arr{
            if setContainer.contains(val+1){
                count += 1
            }
        }
        return count
    }
}
