  
  //https://leetcode.com/problems/binary-tree-right-side-view/
  //简单的层次遍历，可以练习白班写
//  Given a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.
//  
//  For example:
//  Given the following binary tree,
//  1            <---
//  /   \
//  2     3         <---
//  \     \
//  5     4       <---
//  You should return [1, 3, 4].
//  
//  Credits:
//  Special thanks to @amrsaqr for adding this problem and creating all test cases.
//  

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
    func rightSideView(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        guard let root = root else {
            return result
        }
        var queue = [TreeNode]()
        queue.append(root)
        while queue.count > 0 {
            for i  in 0..<queue.count {
                let currentNode = queue.first!
                queue.removeFirst()
                if i == 0 {
                    result.append(currentNode.val)
                }
                if currentNode.right != nil {
                    queue.append(currentNode.right!)
                }
                if currentNode.left != nil {
                    queue.append(currentNode.left!)
                }
            }
        }
        return result
    }
}