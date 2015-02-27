require './restaurant'

describe Restaurant do
  describe '#cost' do
    let(:menu) { {rice: 3, noodles: 2} }
    let(:rest) { Restaurant.new(menu) }

    it 'calculates 0 for an empty order' do
      expect(rest.cost({})).to eq 0
    end

    it 'calculates the cost for a single order' do
      expect(rest.cost({rice: 1, noodles: 1})).to eq 5
    end

    it 'calculates the cost for multiple orders' do
      expect(rest.cost({rice: 1, noodles: 1}, {rice: 2, noodles: 2})).to eq 15
    end
  end
end
