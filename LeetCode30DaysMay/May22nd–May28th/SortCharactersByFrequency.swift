/*
 Question - Sort Characters By Frequency
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/537/week-4-may-22nd-may-28th/3337/
 */

class Solution {
    func frequencySort(_ s: String) -> String {
        var dict = [Character: Int](), result = ""
        for ch in s{
            dict[ch, default: 0] += 1
        }
        for (ch, times) in dict.sorted(by: { $0.1 > $1.1 }){
            result.append(String(repeating: ch,count: times))
        }
        return result
    }
}
