/*
    Question -  Best Time to Buy and Sell Stock II
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3287/
 */

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var output = 0
        guard prices.count > 1 else { return output }
        
        for i in 1..<prices.count where prices[i] > prices[i-1]{
            output += prices[i] - prices[i-1]
        }
        return output
    }
}
