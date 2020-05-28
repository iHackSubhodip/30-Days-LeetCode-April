/*
 Question - Counting Bits
 Link - > https://leetcode.com/explore/challenge/card/may-leetcoding-challenge/537/week-4-may-22nd-may-28th/3343/
 */

class Solution {
    func countBits(_ num: Int) -> [Int] {
        guard num > 0 else { return [0] }
        var answer = Array(repeating: 0, count: num + 1)
        answer[0] = 0
        for i in 1...num{
            answer[i] = answer[i & (i-1)] + 1 // this is the trick
        }
        return answer
    }
}

