# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
    return [] if grid == []
    max = 0
    row = grid.count
    column = grid[0].count
    (0..row-1).each do |r|
        (0..column-1).each do |c|
            if grid[r][c] == 1
                @size = 0
                dfs(grid,r,c)
                max = @size if @size > max
            end
        end
    end
    max
end
def dfs(grid,r,c)
    return if grid[r][c] == 0
    
    @size += 1
    grid[r][c] = 0
    dfs(grid,r+1,c) if r < grid.count-1
    dfs(grid,r-1,c) if r > 0
    dfs(grid,r,c+1) if c < grid[0].count-1
    dfs(grid,r,c-1) if c > 0
end
