module GameOfLife
  class Neighbour
    def initialize(x_coordinate, y_coordinate, grid)
      @grid = grid
      @x_coordinate = x_coordinate
      @y_coordinate = y_coordinate
    end

    def access_neighbour(x_coordinate, y_coordinate)
      (x_coordinate != -1 and y_coordinate != -1 and @grid.cells[x_coordinate][y_coordinate].alive?)
    end

    def neighbour_alive_count
      @top = (@x_coordinate - 1) < 0 ? -1 : (@x_coordinate - 1)
      @bottom = ((@x_coordinate + 1) == (@grid.width)) ? -1 : (@x_coordinate + 1)
      @left = (@y_coordinate - 1) < 0 ? -1 : (@y_coordinate - 1)
      @right = ((@y_coordinate + 1) == (@grid.length)) ? -1 : (@y_coordinate + 1)
      count = 0
      if access_neighbour(@top, @left)
        count = count + 1
      end
      if access_neighbour(@top, @y_coordinate)
        count = count + 1
      end
      if access_neighbour(@top, @right)
        count = count + 1
      end
      if access_neighbour(@bottom, @left)
        count = count + 1
      end
      if access_neighbour(@bottom, @y_coordinate)
        count = count + 1
      end
      if access_neighbour(@bottom, @right)
        count = count + 1
      end
      if access_neighbour(@x_coordinate, @left)
        count = count + 1
      end
      if access_neighbour(@x_coordinate, @right)
        count = count + 1
      end
      count
    end
  end
end
