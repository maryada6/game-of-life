module GameOfLife
  class Grid
    attr :length, :width, :cells

    def initialize(width, length)
      @width = width
      @length = length
      @cells = Array.new(width) { Array.new(length) }
      for row in 0..width - 1 do
        for col in 0..length - 1 do
          @cells[row][col] = GameOfLife::Cell.new(row, col, false)
        end
      end
    end
  end
end
