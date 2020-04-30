/*
    Question - Minimum Path Sum
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/530/week-3/3303/
 */

class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        guard grid.count != 0 && grid[0].count != 0 else { return 0 }
        let m = grid.count, n = grid[0].count, gridValue = grid
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
        for i in 0..<m{
            for j in 0..<n{
                if i == 0 && j == 0{
                    dp[i][j] = gridValue[0][0]
                }else if i == 0{
                    dp[i][j] = gridValue[i][j] + dp[i][j-1]
                }else if j == 0{
                    dp[i][j] = gridValue[i][j] + dp[i-1][j]
                }else{
                    dp[i][j] = gridValue[i][j] + min(dp[i][j-1], dp[i-1][j])
                }
            }
        }
        return dp[m-1][n-1]
    }
}
