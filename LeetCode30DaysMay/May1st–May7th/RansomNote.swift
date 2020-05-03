/*
    Question -  Ransom Note
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/534/week-1-may-1st-may-7th/3318/
 */

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineDict = [Character:Int]()
        for aChar in magazine{
            magazineDict[aChar] = (magazineDict[aChar] ?? 0) + 1
        }
        
        for aChar in ransomNote{
            guard let char = magazineDict[aChar], char != 0 else { return false }
            magazineDict[aChar]! -= 1
        }
        return true
    }
}
