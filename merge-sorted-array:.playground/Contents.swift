
//这道题 是https://leetcode.com/problems/merge-sorted-array/
// 第一遍用java写的，比较复杂
// 刚开始没有想到逆向思考，实际上回很简答，从后面开始考虑，从大到小开始考虑
// merge1是自己的写的算法
// merge2 又参考别人的算法，发现有更简单的存在
class Solution {
    func merge1(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var k = m + n - 1
        while i >= 0 || j >= 0 {
            if i < 0 {
                nums1[k] = nums2[j]
                j -= 1
            } else if j < 0 {
                nums1[k] = nums1[i]
                i -= 1
            } else if nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }
    }
    
    func merge2(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var k = m + n - 1
        while i >= 0 && j >= 0 {
            if nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }
        while j >= 0 {
            nums1[k] = nums2[j];
            j -= 1
            k -= 1
        }
    }
}