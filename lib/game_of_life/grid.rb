module GameOfLife
  class Grid
    attr :length, :width, :cells

    def initialize(width, length)
      if width<0 || length<0
        raise "grid cannot be initialised with negative width and length"
      end
      @width = width
      @length = length
      @cells = Array.new(width) { Array.new(length) }
      (0..width - 1).each { |row|
        (0..length - 1).each { |col|
          @cells[row][col] = GameOfLife::Cell.new(row, col, false)
        }
      }
    end

    def alive_count
      count = 0
      (0..width - 1).each { |row|
        (0..length - 1).each { |col|
          if @cells[row][col].alive
            count = count + 1
          end
        }
      }
      count
    end

    def dead_count
      count = @width * @length - alive_count
      count
    end
  end
end
