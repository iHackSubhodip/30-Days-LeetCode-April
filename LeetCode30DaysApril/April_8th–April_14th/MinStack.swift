/*
    Question - Min Stack
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3292/
 */

class MinStack {

    var stack: [Int]
    var minStack: [Int]
    

    init() {
        stack = [Int]()
        minStack = [Int]()
    }
    
    func push(_ x: Int) {
        stack.append(x)
        if minStack.isEmpty || x <= minStack.last!{
            minStack.append(x)
        }
    }
    
    func pop() {
        guard !stack.isEmpty else { return }
        let removedVal = stack.removeLast()
        if let last = minStack.last, last == removedVal{
            minStack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.isEmpty ? -1 : stack.last!
    }
    
    func getMin() -> Int {
        return minStack.isEmpty ? -1 : minStack.last!
    }
}
