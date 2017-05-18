require 'grid'

describe Grid do
  subject(:grid) { described_class.new }

  it 'initalizes with 3 rows' do
    expect(grid.values.length).to eq 3
  end

  it 'initializes with 3 fields in each rows' do
    expect(grid.values.inject(:concat).length).to eq 9
  end
end
