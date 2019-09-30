class Solution {
  func countAndSay(_ n: Int) -> String {
    var str = "1"
    var count = 1

    for _ in 1..<n {
      let tempString = str
      str = ""

      for j in 0..<tempString.count {
        if j + 1 < tempString.count && tempString[tempString.index(tempString.startIndex, offsetBy: j)] == tempString[tempString.index(tempString.startIndex, offsetBy: j + 1)] {
          count += 1
        } else {
          str += "\(count)\(Int(String(tempString[tempString.index(tempString.startIndex, offsetBy: j)]))!)"
          count = 1
        }
      }
    }

    return str
  }
}

debugPrint(Solution().countAndSay(4))
