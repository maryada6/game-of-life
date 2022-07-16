RSpec.describe GameOfLife::Game do
  context "Initialise the game" do
    before(:each) do
      @grid = GameOfLife::Grid.new(4, 5)
      @grid.cells[1][3].alive!
      @grid.cells[1][4].alive!
      @grid.cells[2][4].alive!
    end
    it 'should initialise the game' do
      expect{GameOfLife::Game.new(@grid)}.not_to raise_error
    end
  end
end