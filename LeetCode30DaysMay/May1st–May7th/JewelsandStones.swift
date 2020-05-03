/*
   Question -  Jewels and Stones
   Link - > https://leetcode.com/explore/challenge/card/may-leetcoding-challenge/534/week-1-may-1st-may-7th/3317/
*/


class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var stonesMap = [Character: Int](), result = 0
        for char in S{
            if let _ = stonesMap[char]{
                stonesMap[char]! += 1
            }else{
                stonesMap[char] = 1
            }
        }
        
        for char in J{
            if stonesMap.keys.contains(char){
                result += stonesMap[char] ?? 0
            }
        }
        return result
    }
}
