/*
    Question - Happy Number
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3284/
 */

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var setContainer = Set<Int>()
        var num = n
        
        while num != 1{
            guard !setContainer.contains(num) else { return false }
            setContainer.insert(num)
            var temp = 0
            while num != 0{
                temp += (num % 10) * (num % 10)
                num /= 10
            }
            num = temp
        }
        return true
    }
}
