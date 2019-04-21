import Foundation

class Solution {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var col = [Int](repeating: 0, count: n)
        var row = [Int](repeating: 0, count: n)

        for i in 0..<n {
            for j in 0..<n {
                row[i] = max(row[i], grid[i][j])
                col[j] = max(col[j], grid[i][j])
            }
        }

        var res = 0
        for i in 0..<n {
            for j in 0..<n {
                res += min(row[i], col[j]) - grid[i][j]
            }
        }

        return res
    }
}

let grid = [[3, 0, 8, 4], [2, 4, 5, 7], [9, 2, 6, 3], [0, 3, 1, 0]]
print(Solution().maxIncreaseKeepingSkyline(grid))
