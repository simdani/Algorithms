class Solution {
    private var memoizedResult = [Int:Int]()

    func climbStairs(_ n : Int) -> Int {
        if n == 0 || n == 1 {
            return 1
        }
        
        if let memoizedValue = memoizedResult[n] {
            return memoizedValue
        }

        let result = climbStairs(n - 1) + climbStairs(n - 2)
        memoizedResult[n] = result
        return result
    }
}

print(Solution().climbStairs(2))
print(Solution().climbStairs(3))
