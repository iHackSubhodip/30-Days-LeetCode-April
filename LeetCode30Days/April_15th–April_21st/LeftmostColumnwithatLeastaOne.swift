/*
    Question - Leftmost Column with at Least a One
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/530/week-3/3306/
 */

class Solution {
    func leftMostColumnWithOne(_ binaryMatrix: BinaryMatrix) -> Int {
        var result = -1
        let dimensions = binaryMatrix.dimensions()
        let rows = dimensions[0]
        let lines = dimensions[1]
        var left = 0
        var right = lines - 1
        var startLine = 0
        let endLine = rows - 1
        while left <= right {
            let mid = (left + right) / 2
            var notFound = true
            for i in startLine...endLine {
                if binaryMatrix.get(i, mid) == 1{
                    startLine = i
                    result = mid
                    right = mid - 1
                    notFound = false
                    break
                }
            }
            if notFound {
                left = mid + 1
            }
        }
        return result
    }
}
