RSpec.describe GameOfLife::Grid do
  context "Initialise the grid" do
    it 'should initialise the grid' do
      expect { GameOfLife::Grid.new(5, 10) }.not_to raise_error
    end
  end

  context "Check the length and width of grid" do
    it 'should return 5 as length for a grid of length 5' do
      grid = GameOfLife::Grid.new(3, 5)
      expect(grid.length).to be 5
    end

    it 'should return 3 as width for a grid of width 3' do
      grid = GameOfLife::Grid.new(3, 5)
      expect(grid.width).to be 3
    end
  end

  context "Check the grid cells" do
    it "should have length and width as 3 and 5 for a grid 3*5" do
      grid = GameOfLife::Grid.new(3, 5)
      expect(grid.cells.length).to be 3
      expect(grid.cells[0].length).to be 5
    end
  end

  context "Check for number of alive and dead cells " do
    it 'should have 15 dead and 0 alive cells for a grid of 3*5 dead cells' do
      grid = GameOfLife::Grid.new(3, 5)
      alive_count = grid.alive_count()
      dead_count = grid.dead_count()
      expect(alive_count).to be 0
      expect(dead_count).to be 15
    end
  end

end