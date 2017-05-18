describe Grid do
  subject(:grid) { described_class.new }

  it 'initalizes with an 3x3 array' do
    expect(grid.values).to eq 3
  end
end
