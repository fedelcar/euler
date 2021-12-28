grid_size = 1001
center_grid = (grid_size - 1) / 2 

def sum_diagonals(grid)
    grid_size = 1001
    sum = 0
    for i in 0..grid_size-1
        sum += grid[i][i] + grid[grid_size - 1 - i][i]
    end
    sum - 1
end

grid = Array.new(grid_size) { Array.new(grid_size)}
grid[center_grid][center_grid] = 1

for i in 1..center_grid
    top_right = ((2 * i ) + 1) ** 2
    grid[center_grid - i][center_grid - i] = top_right - i * 2
    grid[center_grid - i][center_grid + i] = top_right
    grid[center_grid + i][center_grid - i] = top_right - 2 * (i * 2)
    grid[center_grid + i][center_grid + i] = top_right - 3 * (i * 2)
end

puts sum_diagonals(grid)