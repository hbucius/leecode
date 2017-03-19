//https://leetcode.com/problems/find-bottom-left-tree-value
//一次就做对了，但是速度还不够，另外没想到最简单的广度优先办法，只是先放入右孩子
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
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        let leftValue = helper(root, currentDepth: 0).leftValue
        return leftValue
    }
    
    func helper(_ node: TreeNode, currentDepth: Int) -> (leftValue:Int, depth:Int) {
        if node.left == nil && node.right == nil {
            return (leftValue: node.val, depth: currentDepth)
        }
        if node.left == nil && node.right != nil {
            return helper(node.right!, currentDepth: currentDepth + 1)
        }
        if node.right == nil && node.left != nil {
            return helper(node.left!, currentDepth: currentDepth + 1)
        }
        let leftResult = helper(node.left!, currentDepth: currentDepth + 1)
        let rightResult = helper(node.right!, currentDepth: currentDepth + 1)
        if leftResult.depth >= rightResult.depth {
            return (leftValue:leftResult.leftValue, depth:leftResult.depth)
        } else {
            return (leftValue:rightResult.leftValue, depth:rightResult.depth)
        }
    }
}

// 更简单的java表达方式
//https://leetcode.com/problems/find-bottom-left-tree-value/?tab=Solutions

/**
 public int findLeftMostNode(TreeNode root) {
 Queue<TreeNode> queue = new LinkedList<>();
 queue.add(root);
 while (!queue.isEmpty()) {
 root = queue.poll();
 if (root.right != null)
 queue.add(root.right);
 if (root.left != null)
 queue.add(root.left);
 }
 return root.val;
 }
 
 **/