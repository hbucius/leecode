
//https://leetcode.com/problems/find-largest-value-in-each-tree-row/?tab=Solutions
//这道题参考了其他人的答案才写出来，需要反复琢磨其思路， 并且多联系几遍

  public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
    }
 }
class Solution {
    func largestValues(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return [Int]()
        }
        var result = [Int]()
        var queue = [TreeNode]()
        queue.append(root)
        var queuCount = queue.count
        while !queue.isEmpty {
            var maxValue = Int.min
            for _ in 0..<queuCount {
                maxValue = max(maxValue, queue.first!.val)
                if queue.first?.left != nil {
                    queue.append((queue.first?.left)!)
                }
                if queue.first?.right != nil{
                    queue.append((queue.first?.right)!)
                }
                queue.removeFirst()
            }
            result.append(maxValue)
            queuCount = queue.count
        }
        return result
    }
}
