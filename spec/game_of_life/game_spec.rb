RSpec.describe GameOfLife::Game do
  context "Initialise the game" do
    before(:each) do
      @grid = GameOfLife::Grid.new(5, 10)
      @grid.cells[1][3].alive!
      @grid.cells[1][4].alive!
      @grid.cells[2][4].alive!
    end

    it 'should initialise the game' do
      expect { GameOfLife::Game.new(@grid) }.not_to raise_error
    end
  end

  context "Check next state" do
    before(:each) do
      @grid = GameOfLife::Grid.new(5, 4)
      @grid.cells[0][0].alive!
      @grid.cells[0][1].alive!
      @grid.cells[1][0].alive!
      @grid.cells[2][2].alive!
      @grid.cells[2][3].alive!
      @grid.cells[3][0].alive!
      @grid.cells[3][1].alive!
      @grid.cells[3][2].alive!
      @grid.cells[3][3].alive!
      @grid.cells[4][0].alive!
      @grid.cells[4][2].alive!

    end

    it "should return the next state of grid" do
      next_grid_state = GameOfLife::Game.new(@grid).next_grid
      expect(next_grid_state.cells[1][2].alive).to be true
    end
  end
end
