class Solution {
  func strStr(_ haystack: String, _ needle: String) -> Int {
    guard needle.count != 0, haystack != needle else { return 0 }
    guard needle.count < haystack.count else { return -1 }


    for i in 0..<haystack.count {
      var total = 0
      var index = haystack.index(haystack.startIndex, offsetBy: i)
      var currentIndex = i

      for j in 0..<needle.count {
        let jIndex = needle.index(needle.startIndex, offsetBy: j)
        if haystack[index] == needle[jIndex] {
          total += 1

          if total == needle.count {
            return i
          }

          currentIndex += 1
          if currentIndex < haystack.count {
            index = haystack.index(haystack.startIndex, offsetBy: currentIndex)
          }
        } else {
          break
        }
      }
    }

    return -1
  }
}

debugPrint(Solution().strStr("aba", "ab"))
