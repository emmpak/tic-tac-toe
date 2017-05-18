require 'grid'

describe Grid do
  subject(:grid) { described_class.new }

  it 'initalizes with 3 rows' do
    expect(grid.fields.length).to eq 3
  end

  it 'initializes with 3 columns in each row' do
    expect(grid.fields.flatten.length).to eq 9
  end

  it "all fieds hold 'nil' values" do
    expect(grid.fields.flatten.select{ |value| value == nil}.length).to eq 9
  end

  describe '#claim'

  it 'field is claimed if a player picks it' do
    grid.claim(0,0,'X')
    expect(grid.fields.first.first).not_to be_nil
  end
end
