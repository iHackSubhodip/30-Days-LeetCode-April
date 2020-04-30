/*
    Question - Maximal Square
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/531/week-4/3312/
 */

class Solution {
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        guard !matrix.isEmpty else { return 0 }
        var rowCount = matrix.count, columnCount = matrix[0].count, result = 0
        var dpArray = [[Int]](repeating: [Int](repeating: 0, count: columnCount+1), count: rowCount+1)
        
        for i in 1...rowCount{
            for j in 1...columnCount{
                if matrix[i-1][j-1] == Character("1"){
                    dpArray[i][j] = 1 + min(dpArray[i-1][j-1], dpArray[i-1][j], dpArray[i][j-1])
                    result = max(result, dpArray[i][j])
                }
            }
        }
        return result*result
    }
}
