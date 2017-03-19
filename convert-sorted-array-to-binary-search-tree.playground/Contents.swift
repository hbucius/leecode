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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard  nums.count > 0 else {
            return nil
        }
        let middle = nums.count / 2
        let node = TreeNode.init(nums[middle])
        if nums.count == 1 {
            node.left = nil
            node.right = nil
            return node
        } else {
            node.left = sortedArrayToBST(Array(nums.prefix(middle)))
            node.right = sortedArrayToBST(Array(nums.suffix(nums.count - middle - 1)))
            return node
        }
    }
}