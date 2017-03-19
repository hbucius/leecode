 //https://leetcode.com/problems/house-robber-iii/#/description
 
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
    var cache = [String:Int]()
    func rob(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        let key = self.key(of: root)
        if cache.keys.contains(key) {
            return cache[key]!
        }
        let sum1 = rob(root.left) + rob(root.right)
        var sum2 = root.val
        if root.left != nil{
             sum2 += rob(root.left?.right) + rob(root.left?.left)
        }
        if root.right != nil {
            sum2 += rob(root.right?.left) + rob(root.right?.right)
        }
        let ret = max(sum1, sum2)
        cache[key] = ret
        return ret
    }
    
    func key(of node: TreeNode) -> String {
        return "\("%p",node)"
    }
 }