/*
    Question - Maximum Sum Circular Subarray
    Link - > https://leetcode.com/explore/challenge/card/may-leetcoding-challenge/536/week-3-may-15th-may-21st/3330/
 */

class Solution {
    func maxSubarraySumCircular(_ A: [Int]) -> Int {
        var maxVal = A[0], maxAnswer = A[0], minVal = A[0], minAnswer = A[0], sum = A[0]
        for i in 1..<A.count{
            sum += A[i]
            maxVal = max(A[i], maxVal + A[i])
            maxAnswer = max(maxVal, maxAnswer)
            minVal = min(A[i], minVal + A[i])
            minAnswer = min(minVal, minAnswer)
        }
        return (minAnswer == sum) ? maxAnswer : max(maxAnswer, sum - minAnswer)
    }
}
