class Solution {
    func countBattleships(_ board: [[Character]]) -> Int {
        let rowCount = board.count
        if rowCount == 0 {
            return 0
        }
        let colunmCount = board[0].count
        if colunmCount == 0 {
            return 0
        }
        let battleShip = Character("X")
        let empty = Character(".")
        var result = 0
        for row in 0..<rowCount {
            for colum in 0..<colunmCount {
                let value = board[row][colum]
                if value == empty {
                    continue
                }
                if row - 1 >= 0 && board[row - 1][colum] == battleShip {
                    continue
                }
                if colum - 1 >= 0 && board[row][colum - 1] == battleShip {
                    continue
                }
                result += 1
            }
        }
        return result
    }
}