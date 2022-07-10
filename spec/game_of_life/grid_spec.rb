RSpec.describe GameOfLife::Grid do
  context "Initialise the grid" do
    it 'should initialise the grid' do
      expect { GameOfLife::Grid.new(5, 10) }.not_to raise_error
    end
  end
end