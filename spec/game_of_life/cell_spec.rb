RSpec.describe GameOfLife::Cell do
  context "Initialise the cell" do
    it 'should initialise the cell' do
      expect { GameOfLife::Cell.new(0, 0, true) }.not_to raise_error
    end
  end

  context "Check the state of the cell" do
    it 'should return false for dead cell' do
      cell = GameOfLife::Cell.new(0, 0, false)
      expect(cell.alive).to be false
    end

    it 'should return true for alive cell' do
      cell = GameOfLife::Cell.new(0, 0, true)
      expect(cell.alive).to be true
    end

    it 'should change and return state of cell' do
      cell = GameOfLife::Cell.new(0, 0, true)
      cell.dead!
      expect(cell.dead?).to be true
      cell.alive!
      expect(cell.alive?).to be true
    end
  end

end