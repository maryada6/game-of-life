module GameOfLife
  class Game
    def initialize(grid)
      @grid = grid
      @width = grid.width
      @length = grid.length
    end

    def next_cell_state(x_coordinate, y_coordinate, alive)
      count = GameOfLife::Neighbour.new(x_coordinate, y_coordinate, @grid).neighbour_alive_count
      ((alive and (count == 2 or count == 3)) or (!alive and count == 3))
    end

    def next_grid
      next_grid_state = GameOfLife::Grid.new(@width, @length)
      (0..@width - 1).each { |row|
        (0..@length - 1).each { |col|
          next_grid_state.cells[row][col] = GameOfLife::Cell.new(row, col, next_cell_state(row, col, @grid.cells[row][col].alive?))
          if next_grid_state.cells[row][col].alive?
            puts "next_grid_state.cells[#{row}][#{col}] will be #{next_grid_state.cells[row][col].alive?} "
          end
        }
      }
      next_grid_state
    end
  end
end