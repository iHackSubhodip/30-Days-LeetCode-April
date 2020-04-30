/*
    Question - Backspace String Compare
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3291/
 */

class Solution {
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        guard S.count != 0 && T.count != 0 else { return false }
        var sString = "", tString = ""
        
        for char in S{
            if char == "#"{
                sString.popLast()
            }else{
                sString.append(char)
            }
        }
        
        for char in T{
            if char == "#"{
                tString.popLast()
            }else{
                tString.append(char)
            }
        }
        
        return sString == tString
    }
}
