//: Playground - noun: a place where people can play
// https://leetcode.com/problems/valid-palindrome/#/description
//判断是否是回文，忽略大小写

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard s.characters.count > 0 else {
            return true
        }
        var pointerFromFirst = 0
        var pointerFromLast = s.characters.count - 1
        
        while pointerFromLast > pointerFromFirst {
            let first = s.characters[s.characters.index(s.characters.first, offsetBy: pointerFromFirst)]
            
        }
        return true
    }
}