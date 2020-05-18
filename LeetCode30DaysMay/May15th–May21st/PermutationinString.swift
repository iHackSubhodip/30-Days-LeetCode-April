/*
 Question - Permutation in String
 Link - > https://leetcode.com/explore/challenge/card/may-leetcoding-challenge/536/week-3-may-15th-may-21st/3333/
 */

class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var s1CharFreq = Dictionary(s1.map { ($0, 1) }, uniquingKeysWith: +), mattersCount = 0
        let s2 = Array(s2)
        for i in 0..<s2.count{
            if i >= s1.count{
                let leftChar = s2[i - s1.count]
                if let freq = s1CharFreq[leftChar]{
                    s1CharFreq[leftChar] = freq + 1
                    if freq >= 0{
                        mattersCount -= 1
                    }
                }
            }
            
            if let freq = s1CharFreq[s2[i]]{
                s1CharFreq[s2[i]] = freq - 1
                if freq > 0{
                    mattersCount += 1
                }
            }
            if mattersCount == s1.count{
                return true
            }
        }
        return false
    }
}
