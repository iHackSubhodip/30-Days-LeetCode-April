/*
 Question - Uncrossed Lines
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/537/week-4-may-22nd-may-28th/3340/
 */

class Solution {
    func maxUncrossedLines(_ A: [Int], _ B: [Int]) -> Int {
        var dpArray = Array(repeating: Array(repeating: 0, count: B.count + 1), count: A.count+1)
        for i in 1...A.count{
            for j in 1...B.count{
                dpArray[i][j] = ((A[i-1] == B[j-1]) ? dpArray[i-1][j-1] + 1 : max(dpArray[i-1][j], dpArray[i][j-1]))
            }
        }
        return dpArray[A.count][B.count]
    }
}

