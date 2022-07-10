RSpec.describe GameOfLife::Cell do
  context "Initialise the cell" do
    it 'should initialise the cell' do
      expect { GameOfLife::Cell.new }.not_to raise_error
    end
  end
end