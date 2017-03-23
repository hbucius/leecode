//https://leetcode.com/problems/valid-parentheses/#/description
//可以多练习，倒不难
class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let map = [Character("(") : Character(")"), Character("[") : Character("]"), Character("{") : Character("}")]
        for c in s.characters {
            switch c {
            case "(", "[", "{":
                stack.append(c)
            case ")", "]", "}":
                if let last = stack.popLast(), let value = map[last], value == c {
                    continue
                } else {
                    return false
                }
            default:
                assert(false, "invalid input")
                return false
            }
        }
        return stack.count == 0
    }
}

let s = Solution()
s.isValid("()")