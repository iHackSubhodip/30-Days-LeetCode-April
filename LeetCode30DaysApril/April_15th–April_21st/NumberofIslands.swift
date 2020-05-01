/*
    Question - Number of Islands
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/530/week-3/3302/
 */

class Solution {
    
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid.count > 0 && grid[0].count > 0 else { return 0 }
        var count = 0, gridValue = grid
        let m = grid.count, n = grid[0].count
        
        for i in 0..<m{
            for j in 0..<n{
                if gridValue[i][j] == "1"{
                    count += 1
                    depthFirstSearch(&gridValue, m, n, i, j)
                }
            }
        }
        
        return count
    }
    
    func depthFirstSearch(_ grid: inout [[Character]],_ m: Int,_ n: Int,_ i: Int,_ j: Int){
        guard i >= 0 && i < m && j >= 0 && j < n && grid[i][j] == "1" else { return }
        grid[i][j] = "0"
        
        depthFirstSearch(&grid, m, n, i - 1, j)
        depthFirstSearch(&grid, m, n, i + 1, j)
        depthFirstSearch(&grid, m, n, i, j + 1)
        depthFirstSearch(&grid, m, n, i, j - 1)
    }
}
