require 'grid'

describe Grid do
  subject(:grid) { described_class.new }

  it 'initalizes with 3 rows' do
    expect(grid.values.length).to eq 3
  end

  it 'initializes with 3 columns in each row' do
    expect(grid.values.flatten.length).to eq 9
  end

  it "all fieds hold 'nil' values" do
    expect(grid.values.flatten.select{ |value| value == nil}.length).to eq 9
  end

  describe '#empty?()'

  it 'field is claimed if a player picks it' do
    grid.claim(0,0,'X')
    expect(grid.first.first).not_to be_nil
    # field.claim('X')
    # expect(field).not_to be_empty
  end
end
