//https://leetcode.com/problems/valid-palindrome/#/description
import Foundation
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard s.characters.count > 0 else {
            return true
        }
        let copyS = s.uppercased()
        var leftIndex = copyS.startIndex
        var rightIndex = copyS.index(before: copyS.endIndex)
        while leftIndex < rightIndex {
            if !copyS[leftIndex].isDigtalOrAlphabet() {
                leftIndex = copyS.index(after: leftIndex)
                continue
            }
            if !copyS[rightIndex].isDigtalOrAlphabet() {
                rightIndex = copyS.index(before: rightIndex)
                continue
            }
            if copyS[leftIndex] != copyS[rightIndex] {
                print(leftIndex)
                print(rightIndex)
                return false
            }
            leftIndex = copyS.index(after: leftIndex)
            rightIndex = copyS.index(before: rightIndex)
        }
        return true
    }
}
extension Character {
    func isDigtalOrAlphabet() -> Bool {
        let set = CharacterSet.alphanumerics
        return set.contains(String(self).unicodeScalars.first!)
    }
}

Solution().isPalindrome(".a..")
