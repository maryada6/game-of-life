module GameOfLife
  class Game
    def initialize(grid)
      @grid = grid
      @width = grid.width
      @length = grid.length
    end
  end
end