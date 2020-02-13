public class ListNode {
    public var val: Int
    public var next: ListNode?

    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }

        var list = head
        while (list?.next != nil) {
            if list?.val == list?.next?.val {
                list?.next = list?.next?.next
            } else {
                list = list?.next
            }
        }

        return head
    }
}


