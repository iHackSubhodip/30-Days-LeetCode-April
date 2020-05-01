/*
    Question - First Unique Number
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/531/week-4/3313/
 */

class FirstUnique {

    var map = [Int: Int]()
    var queue = [Int]()
    
    init(_ nums: [Int]) {
        for num in nums{
            map[num, default: 0] += 1
            queue.append(num)
        }
    }
    
    func showFirstUnique() -> Int {
        while !queue.isEmpty{
            guard let firstValue = queue.first else { return -1 }
            if map[firstValue] == 1{
                return firstValue
            }
            queue.removeFirst()
        }
        return -1
    }
    
    func add(_ value: Int) {
        map[value, default: 0] += 1
        if map[value]! == 1 {
            queue.append(value)
        }
    }
}
