class Solution {
    func lengthOfLastWord(_ string: String) -> Int {
      return string.split(separator: " ").last?.count ?? 0
  }
}

debugPrint(Solution().lengthOfLastWord("Hello World"))
