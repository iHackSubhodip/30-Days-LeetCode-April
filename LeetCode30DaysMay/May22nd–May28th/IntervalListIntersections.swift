/*
 Question - Interval List Intersections
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/537/week-4-may-22nd-may-28th/3338/
 */

class Solution {
    func intervalIntersection(_ A: [[Int]], _ B: [[Int]]) -> [[Int]] {
        var result = [[Int]](), indexA = 0, indexB = 0
        guard !A.isEmpty,!B.isEmpty else { return result }
        while indexA < A.count, indexB < B.count{
            let a = A[indexA], b = B[indexB]
            let start = max(a[0], b[0]), end = min(a[1], b[1])
            if start <= end { result.append([start, end]) }
            if a[1] > b[1]{
                indexB += 1
            }else{
                indexA += 1
            }
        }
        return result
    }
}
