import Foundation

class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var total = 0
        var jSet: Set<Character> = []

        J.forEach { (char) in
            jSet.insert(char)
        }

        S.forEach { (char) in
            if jSet.contains(char) {
                total += 1
            }
        }

        return total
    }
}

print(Solution().numJewelsInStones("aA", "aAAbbbb"))
print(Solution().numJewelsInStones("z", "ZZ"))
