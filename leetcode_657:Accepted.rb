# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
    return (moves.count "L") == (moves.count "R") && (moves.count "U") == (moves.count "D")
end