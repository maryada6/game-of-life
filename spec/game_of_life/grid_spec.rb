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
end