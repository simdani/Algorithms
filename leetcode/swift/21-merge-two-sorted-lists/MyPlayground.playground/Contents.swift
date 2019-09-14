/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class ListNode {
  var val: Int
  var next: ListNode?

  init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

class Solution {

  func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard var l1 = l1 else { return l2 }
    guard var l2 = l2 else { return l1 }

    var node: ListNode?

    if l1.val <= l2.val {
      node = l1
      node?.next = mergeTwoLists(l1.next, l2)
    } else {
      node = l2
      node?.next = mergeTwoLists(l1, l2.next)
    }

    return node
  }
}

var list1Node1 = ListNode(1)
var list1Node2 = ListNode(2)
var list1Node3 = ListNode(3)

list1Node1.next = list1Node2
list1Node2.next = list1Node3

var list2Node1 = ListNode(1)
var list2Node2 = ListNode(3)
var list2Node3 = ListNode(4)

list2Node1.next = list2Node2
list2Node2.next = list2Node3

let mergedList = Solution().mergeTwoLists(list1Node1, list2Node1)



