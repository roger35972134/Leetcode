# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
    sum = 0
    row = grid.count
    column = grid[0].count
    (0..row-1).each do |r|
        (0..column-1).each do |c|
            if grid[r][c] == 1
                sub = 4
                unless r == 0
                    sub -= 1 if grid[r-1][c] == 1
                end
                unless r == row-1
                    sub -= 1 if grid[r+1][c] == 1
                end
                unless c == 0
                    sub -= 1 if grid[r][c-1] == 1
                end
                unless c == column-1
                    sub -= 1 if grid[r][c+1] == 1
                end
                sum += sub
            end
        end
    end
    sum
end