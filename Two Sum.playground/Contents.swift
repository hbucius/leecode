class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int : Int]()
        for (i, num) in nums.enumerated() {
            let lastValue = target - num
            if map[lastValue] != nil {
                return [i, map[lastValue]!]
            } else {
                map[num] = i
            }
        }
        return []
    }
}