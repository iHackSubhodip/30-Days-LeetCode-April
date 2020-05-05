/*
    Question - First Unique Character in a String
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/534/week-1-may-1st-may-7th/3320/
 */

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        guard !s.isEmpty else { return -1 }
        var charDict = [Character: Int]()
        for char in s{
            charDict[char] = (charDict[char] ?? 0) + 1
        }
        
        for (index, val) in s.enumerated(){
            if charDict[val] == 1{
                return index
            }
        }
        return -1
    }
}
