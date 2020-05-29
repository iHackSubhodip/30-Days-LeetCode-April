/*
 Question - Course Schedule
 Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/538/week-5-may-29th-may-31st/3344/
 */

class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var inDegrees = Array(repeating: 0, count: numCourses), graph = [Int: [Int]]()
        var countCourses = [Int](), queue = [Int]()
        
        for p in prerequisites{
            graph[p[1], default: []].append(p[0])
            inDegrees[p[0]] += 1
        }
        
        for course in 0..<numCourses{
            if inDegrees[course] == 0{
                queue.append(course)
            }
        }
            
        while !queue.isEmpty{
            let course = queue.removeFirst()
            countCourses.append(course)
            guard let toCourse = graph[course] else { continue }
            toCourse.forEach{
                inDegrees[$0] -= 1
                if inDegrees[$0] == 0{
                    queue.append($0)
                }
            }
        }
            
        return countCourses.count == numCourses
    }
}

