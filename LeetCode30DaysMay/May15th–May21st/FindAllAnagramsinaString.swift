/*
 Question - Find All Anagrams in a String
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/536/week-3-may-15th-may-21st/3332/
 */

class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var s = s.map { letterIndex($0) }, p = p.map { letterIndex($0) }
        var result: [Int] = [], referenceArray = Array(repeating: 0, count: 26), actualMap = Array(repeating: 0, count: 26)
        for char in p{
            referenceArray[char] += 1
        }
        for i in 0..<s.count{
            actualMap[s[i]] += 1
            if i - p.count >= 0{
                actualMap[s[i - p.count]] -= 1
            }
            
            if actualMap == referenceArray{
                result.append(i - p.count + 1)
            }
        }
        return result
    }
    
    func letterIndex(_ letter: Character) -> Int{
        return Int(letter.unicodeScalars.first!.value) - Int(Unicode.Scalar("a").value)
    }
}
