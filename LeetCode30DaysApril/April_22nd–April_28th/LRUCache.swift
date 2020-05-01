/*
    Question - LRU Cache
    Link - > https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/531/week-4/3309/
 */

class DoublyLinkedList{
    var key: Int
    var value: Int
    var previous: DoublyLinkedList?
    var next: DoublyLinkedList?
    var hashValue: Int
    
    init(key: Int, value: Int) {
        self.key = key
        self.value = value
        self.hashValue = key
    }
}

class LRUCache{
    var cache: [Int: DoublyLinkedList]
    var head: DoublyLinkedList
    var tail: DoublyLinkedList
    var capacity: Int
    
    init(_ capacity: Int){
        self.capacity = capacity
        self.cache = [Int: DoublyLinkedList]()
        self.head = DoublyLinkedList(key: Int.min, value: Int.max)
        self.tail = DoublyLinkedList(key: Int.max, value: Int.max)
        self.head.next = self.tail
        self.tail.previous = self.head
    }
    
    func add(_ node: DoublyLinkedList){
        let next = head.next
        head.next = node
        node.previous = head
        node.next = next
        next?.previous = node
    }
    
    func remove(_ node: DoublyLinkedList){
        let previous = node.previous
        let next = node.next
        previous?.next = next
        next?.previous = previous
    }
    
    func get(_ key: Int) -> Int{
        if let node = cache[key]{
            remove(node)
            add(node)
            return node.value
        }
        return -1
    }
    
    func put(_ key: Int,_ value: Int){
        if let node = cache[key]{
            remove(node)
            cache.removeValue(forKey: key)
        }else if cache.keys.count >= capacity{
            if let leastNode = tail.previous{
                remove(leastNode)
                cache.removeValue(forKey: leastNode.key)
            }
        }
        let newNode = DoublyLinkedList(key: key, value: value)
        cache[key] = newNode
        add(newNode)
    }
}
