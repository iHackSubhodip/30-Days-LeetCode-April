/*
    Question - Perform String Shifts
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3299/
 */

class Solution {
    func stringShift(_ s: String, _ shift: [[Int]]) -> String {
        let finalShift = shift.reduce(0) { $0 + $1[1] * ($1[0] == 0 ? -1 : 1) } % s.count
        let rightShift = finalShift > 0 ? finalShift : (s.count + finalShift)
        return String(s.suffix(rightShift) + s.dropLast(rightShift))
    }
}
