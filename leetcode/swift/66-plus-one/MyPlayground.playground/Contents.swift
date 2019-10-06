class Solution {
  func plusOne(_ digits: [Int]) -> [Int] {
    var numbers = digits
    for index in stride(from: numbers.count - 1, to: -1, by: -1) {
      if numbers[index] != 9 {
        numbers[index] += 1
        break
      } else {
        numbers[index] = 0
      }
    }

    if numbers[0] == 0 {
      var result = Array(repeating: 0, count: numbers.count + 1)
      result[0] = 1
      return result
    }

    return numbers
  }
}

var array = [4, 9, 9, 9]
debugPrint(Solution().plusOne(array))
