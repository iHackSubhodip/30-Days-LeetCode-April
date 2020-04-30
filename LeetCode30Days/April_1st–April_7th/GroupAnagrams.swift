/*
    Question - Group Anagrams
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3288/
 */

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var outputAnagrams = [String: [String]]()
        
        for str in strs {
            let sortedStr = String(str.sorted())
            outputAnagrams[sortedStr, default: []].append(str)
        }
        return Array(outputAnagrams.values)
    }
}
