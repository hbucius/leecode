// two sum problem, while the arrary is sorted
//https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/#/description
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        guard numbers.count > 0 else {
            return []
        }
        var pointer1 = 0
        var pointer2 = numbers.count - 1
        while pointer1 < pointer2 {
            let sum = numbers[pointer1] + numbers[pointer2]
            if sum == target {
                return [pointer1 + 1, pointer2 + 1]
            } else if sum > target {
                pointer2 -= 1
            } else {
                pointer1 += 1
            }
        }
        return []
    }
}