require 'grid'

describe Grid do
  subject(:grid) { described_class.new }

  # before(:all) { grid.fields = Array.new(3) { Array.new(3, nil)}}

  it 'initalizes with 3 rows' do
    expect(grid.fields.length).to eq 3
  end

  it 'initializes with 3 columns in each row' do
    expect(grid.fields.flatten.length).to eq 9
  end

  it "all fieds hold 'nil' values" do
    expect(grid.fields.flatten.select{ |value| value == nil}.length).to eq 9
  end

  describe '#claim' do

    context 'a field is selected by a player' do
      before(:each) { grid.claim(0,0,'X') }

      it 'is claimed on the grid' do
        expect(grid.fields.first.first).not_to be_nil
      end

      it 'grid has 8 empty value left' do
        expect(grid.fields.flatten.select{ |value| value == nil}.length).to eq 8
      end

      it 'it cannot be picked by another user' do
        grid.claim(0,0,'O')
        expect(grid.fields.first.first).to eq 'X'
      end
    end
  end

  describe 'complete_row?' do
    context 'returns false if' do
      it 'rows are empty' do
        expect(grid).not_to be_complete_row
      end

      it 'a row has not been claimed by one user' do
        grid.claim(0,0,'X')
        grid.claim(0,1,'X')
        grid.claim(0,2,'O')
        expect(grid).not_to be_complete_row
      end
    end

    context 'returns true if' do
      it 'row has been claimed by X user' do
        (0..2).each { |column| grid.claim(0,column, 'X') }
        expect(grid).to be_complete_row
      end

      it 'row has been claimed by O user' do
        (0..2).each { |column| grid.claim(0,column, 'O') }
        expect(grid).to be_complete_row
      end
    end
  end
end
