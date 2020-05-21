/*
 Question - Count Square Submatrices with All Ones
 Link - > https://leetcode.com/explore/challenge/card/may-leetcoding-challenge/536/week-3-may-15th-may-21st/3336/
 */

class Solution {
    func countSquares(_ matrix: [[Int]]) -> Int {
        guard !matrix.isEmpty else { return 0 }
        let rowCount = matrix.count, columnCount = matrix[0].count
        var storageArray = [[Int]](repeating: [Int](repeating: 0,count: columnCount + 1),count: rowCount + 1), answer = 0
        for i in 1...rowCount{
            for j in 1...columnCount{
                if matrix[i-1][j-1] == 1{
                    storageArray[i][j] = 1 + min(storageArray[i][j-1], storageArray[i-1][j], storageArray[i-1][j-1])
                    answer += storageArray[i][j]
                }
            }
        }
        return answer
    }
}
