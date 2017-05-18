require 'game'

describe Game do
  let(:field) { double(:field, claimed: true)}
  let(:field_class) { double(:field_class, new: field)}
  # let(:player1) { double(:player1, :play}
  subject(:game) { described_class.new(Field) }

  it 'initializes with 3 rows' do
    expect(game.fields.length).to eq 3
  end

  it 'initializes with 3 fields in each row' do
    expect(game.fields.each.inject(:concat).length).to eq 9
  end

  # describe '#play' do
  #   it 'populates one of the squares' do
  #     game.play(3)
  #     expect(fields[3].value).to be_claimed
  #   end
  # end

end
