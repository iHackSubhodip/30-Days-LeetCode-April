/*
    Question - Implement Trie
    Link - > https://leetcode.com/explore/featured/card/may-leetcoding-challenge/535/week-2-may-8th-may-14th/3329/
 */

class TrieNode{
    var children: [String: TrieNode]
    var isWord: Bool
    
    init(){
        self.children = [String: TrieNode]()
        self.isWord = false
    }
}

class Trie {

    var root: TrieNode
    
    /** Initialize your data structure here. */
    init() {
        self.root = TrieNode()
    }
    
    /** Inserts a word into the trie. */
    func insert(_ word: String) {
        guard !word.isEmpty else { return }
        var current = self.root
        
        for letter in word{
            if let node = current.children[String(letter)]{
                current = node
            }else{
                let trie = TrieNode()
                current.children[String(letter)] = trie
                current = trie
            }
        }
        current.isWord = true
    }
    
    /** Returns if the word is in the trie. */
    func search(_ word: String) -> Bool {
        guard !word.isEmpty else { return false }
        var current = self.root
        for letter in word{
            guard let node = current.children[String(letter)] else { return false }
            current = node
        }
        return current.isWord
    }
    
    /** Returns if there is any word in the trie that starts with the given prefix. */
    func startsWith(_ prefix: String) -> Bool {
        guard !prefix.isEmpty else { return false }
        var current = self.root
        
        for letter in prefix{
            guard let node = current.children[String(letter)] else { return false }
            current = node
        }
        return true
    }
}
