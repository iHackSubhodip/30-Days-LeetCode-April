/*
    Question -  Find the Town Judge
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/535/week-2-may-8th-may-14th/3325/
 */

class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        guard N > 1 else { return 1 }
        var trustReceived: [Int: Int] = [:], trustGiven: [Int: Int] = [:], judge = -1
        for relation in trust{
            trustReceived[relation[1], default: 0] += 1
            trustGiven[relation[0], default: 0] += 1
        }
        
        for i in 1...N{
            if trustGiven[i] == nil, trustReceived[i] == N-1{
                judge = i
            }
        }
        return judge
    }
}
