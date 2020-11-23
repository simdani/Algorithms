import Foundation

public enum Complexity {

    // Constant time O(1)
    public func checkFirst(names: [String]) {
        if let first = names.first {
            print(first)
        } else {
            print("no names")
        }
    }

    // Linear time O(n)
    public func printNames(names: [String]) {
        for name in names {
            print(name)
        }
    }

    // Quadratic time O(n * n)
    public func printNamesQuadratic(names: [String]) {
        for _ in names {
            for name in names {
                print(name)
            }
        }
    }

    // Logaritmic time O(log n)
    public func naiveContains(_ value: Int, in array: [Int]) -> Bool {
        guard !array.isEmpty else { return false }
        let middleIndex = array.count / 2

        if value <= array[middleIndex] {
            for index in 0...middleIndex {
                if array[index] == value {
                    return true
                }
            }
        } else {
            for index in middleIndex..<array.count {
                if array[index] == value {
                    return true
                }
            }
        }

        return false
    }

    public func sumFromOne(upto n: Int) -> Int {
        (n + 1) * n / 2
    }

    
}
