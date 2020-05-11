/*
    Question -  Flood Fill
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/535/week-2-may-8th-may-14th/3326/
 */

class Solution {
    var origin: Int?
    
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var imageArr = image
        origin = image[sr][sc]
        self.traverse(&imageArr, sr, sc, newColor)
        return imageArr
    }
    
    func traverse(_ image: inout [[Int]], _ row: Int, _ col: Int, _ newColor: Int) {
        if row < 0 || col < 0 || row >= image.count || col >= image[row].count { return }
        if image[row][col] == newColor { return }
        if image[row][col] == self.origin {
            image[row][col] = newColor
            traverse(&image, row - 1, col, newColor)
            traverse(&image, row, col - 1, newColor)
            traverse(&image, row + 1, col, newColor)
            traverse(&image, row, col + 1, newColor)
        }
    }
}
