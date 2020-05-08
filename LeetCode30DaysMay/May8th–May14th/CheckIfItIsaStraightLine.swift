/*
    Question -  Check If It Is a Straight Line
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/535/week-2-may-8th-may-14th/3323/
 */

class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        let current = coordinates[0]
        let next = coordinates[1]
        
        let y = next[1] - current[1]
        let x = next[0] - current[0]
        
        var slope = Double(y) / Double(x)
        
        for i in 1..<coordinates.count - 1{
            let current = coordinates[i]
            let next = coordinates[i+1]

            let y = next[1] - current[1]
            let x = next[0] - current[0]
            
            let dSlope = Double(y) / Double(x)
            
            if slope != dSlope{
                return false
            }
        }
        return true
    }
}
