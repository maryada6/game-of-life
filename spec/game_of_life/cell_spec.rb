RSpec.describe GameOfLife::Cell do
  context "Initialise the cell" do
    it 'should initialise the cell' do
      expect { GameOfLife::Cell.new(0, 0, TRUE) }.not_to raise_error
    end

    it 'should return false for dead cell' do
      cell = GameOfLife::Cell.new(0, 0, FALSE)
      expect(cell.alive).to be FALSE
    end

    it 'should return true for alive cell' do
      cell = GameOfLife::Cell.new(0, 0, TRUE)
      expect(cell.alive).to be TRUE
    end
  end
end