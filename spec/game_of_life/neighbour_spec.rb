RSpec.describe GameOfLife::Neighbour do
  context "Check a cell's neighbour alive and dead count" do
    before(:each) do
      @grid = GameOfLife::Grid.new(5, 10)
      @grid.cells[1][3].alive!
      @grid.cells[1][4].alive!
      @grid.cells[2][4].alive!
      @neighbour = GameOfLife::Neighbour.new(1, 3, @grid)
    end
    it 'should give 2 alive neighbour for cell[1][3]  ' do
      neighbour_alive_count = @neighbour.neighbour_alive_count
      expect(neighbour_alive_count).to be 2
    end
  end
end