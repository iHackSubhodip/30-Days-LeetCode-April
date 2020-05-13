/*
    Question - Remove K Digits
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/535/week-2-may-8th-may-14th/3328/
 */

class Solution {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        guard num.count > 0 && num.count > k && num.count < 10002 else { return "0" }
        var stack = [Character](), count = k
        for character in num{
            while !stack.isEmpty && stack.last! > character && count > 0{
                count -= 1
                stack.removeLast()
            }
            stack.append(character)
        }

        while count > 0{
            count -= 1
            stack.removeLast()
        }

        var i = 0
        while i < stack.count && stack[i] == "0"{
            i += 1
        }
        let result = String(stack[i...])
        return result.isEmpty ? "0" : result
    }
}
