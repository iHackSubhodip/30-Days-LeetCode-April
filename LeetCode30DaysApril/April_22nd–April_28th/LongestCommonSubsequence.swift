/*
    Question - Longest Common Subsequence
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/530/week-3/3306/
 */

class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        guard text1.count != 0 || text2.count != 0 else { return 0 }
        let string1 = Array(text1), string2 = Array(text2), n1 = text1.count, n2 = text2.count
        var dpArray = Array(repeating: Array(repeating: 0, count: n2+1),count:n1+1)
        for i in 1...n1{
            for j in 1...n2{
                if string1[i-1] == string2[j-1]{
                    dpArray[i][j] = 1 + dpArray[i-1][j-1]
                }else{
                    dpArray[i][j] = max(dpArray[i-1][j], dpArray[i][j-1])
                }
            }
        }
        return dpArray[n1][n2]
    }
}
