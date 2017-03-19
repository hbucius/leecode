//: 太简单了，不建议做第二次

class Solution {
    func findWords(_ words: [String]) -> [String] {
        return words.filter{belongToOneKeyBoardRow(word: $0)}
    }
    
    private func belongToOneKeyBoardRow(word:String) -> Bool {
        if word.characters.count == 0 {
            return true
        }
        let word = word.lowercased()
        let line1 = "qwertyuiop"
        let line2 = "asdfghjkl"
        let line3 = "zxcvbnm"
        var first: String? = nil
        for character in word.characters {
            if first != nil {
                if !first!.characters.contains(character) {
                    return false
                }
            } else {
                first = [line1, line2, line3].filter{$0.characters.contains(character)}.first
                assert(first != nil, "invalid input")
            }
        }
        return true
    }
}