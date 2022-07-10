module GameOfLife
  class Cell
    attr :x_coordinate, :y_coordinate, :alive

    def initialize(x_coordinate, y_coordinate, alive)
      @x_coordinate = x_coordinate
      @y_coordinate = y_coordinate
      @alive = alive
    end
  end
end