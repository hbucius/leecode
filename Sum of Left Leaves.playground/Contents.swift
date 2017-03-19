
//https://leetcode.com/problems/sum-of-left-leaves/?tab=Description
//此题做了好几遍才作对，主要是： 1 root不能算左节点， 2 使用=== 这个表达相等
//Find the sum of all left leaves in a given binary tree.
//
//Example:
//
//3
/// \
//9  20
///  \
//15   7
//
//There are two left leaves in the binary tree, with values 9 and 15 respectively. Return 24.
//Subscribe to see which companies asked this question.


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
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        return helper(root, parent: nil)
    }
    
    func helper(_ node:TreeNode, parent:TreeNode?) -> Int {
        var sum = 0
        if node.left != nil {
            sum += helper(node.left!, parent: node)
        }
        if node.right != nil {
            sum += helper(node.right!, parent: node)
        }
        if node.left == nil && node.right == nil{
            sum += node.val
            if parent?.left != nil && parent?.left! === node {
                sum += node.val
            }
        }
        return sum
    }
}