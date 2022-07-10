module GameOfLife
  class Grid
    attr :length, :width

    def initialize(width, length)
      @width = width
      @length = length
    end
  end
end