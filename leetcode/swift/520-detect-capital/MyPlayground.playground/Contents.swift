import Foundation

extension Character {
    func isUpperCase() -> Bool {
        return CharacterSet.uppercaseLetters.contains(self.unicodeScalars.first!)
    }
}

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        let firstCharUppercase = word.first!.isUpperCase()
        let capitalsCount = word.filter { $0.isUpperCase() }.count

        if firstCharUppercase && capitalsCount == 1 {
            return true
        } else if word.count == capitalsCount {
            return true
        } else if capitalsCount == 0 {
            return true
        }

        return false
    }
}

print(Solution().detectCapitalUse("USA"))
print(Solution().detectCapitalUse("Flag"))
print(Solution().detectCapitalUse("FlaG"))
