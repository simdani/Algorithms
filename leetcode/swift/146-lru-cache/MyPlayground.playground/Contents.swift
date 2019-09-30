class LRUCache {
    var map = [Int: Node]()
    private let capacity: Int
    var head: Node?
    var tail: Node?
    
    class Node {
        var key = 0
        var value = 0
        var prev: Node?
        var next: Node?

        init(key: Int, value: Int) {
            self.key = key
            self.value = value
        }
    }

    init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
        guard let node = map[key] else {
            return -1
        }

        if node !== head {
            remove(node)
            addToHead(node)
        }
        
        return node.value
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = map[key] {
            node.value = value
            if node !== head {
                remove(node)
                addToHead(node)
            }

            return
        }

        if map.count == capacity {
            map[tail!.key] = nil
            remove(tail!)
        }

        let newNode = Node(key: key, value: value)
        map[key] = newNode
        addToHead(newNode)
        if tail == nil {
            tail = newNode
        }
    }

    private func addToHead(_ node: Node) {
        node.next = head
        head?.prev = node
        head = node
    }

    private func remove(_ node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
        if node === tail {
            tail = node.prev
        }
    }
}
