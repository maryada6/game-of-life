module GameOfLife
  class Cell
    attr :x_coordinate, :y_coordinate, :alive

    def initialize(x_coordinate, y_coordinate, alive)
      @x_coordinate = x_coordinate
      @y_coordinate = y_coordinate
      @alive = alive
    end

    def alive!
      @alive = true
    end

    def dead!
      @alive = false
    end

    def alive?
      @alive
    end

    def dead?
      !alive?
    end
  end
end
