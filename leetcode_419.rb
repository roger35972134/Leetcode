# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
    height = board.size
    width = 0
    width = board[0].size if height
    answer = 0
    
    for h in 0..height-1
        for w in 0..width-1
            if board[h][w] == 'X'
                next if h > 0 and board[h-1][w] == 'X'
                next if w > 0 and board[h][w-1] == 'X'
                answer += 1
            end
        end
    end
    answer
end