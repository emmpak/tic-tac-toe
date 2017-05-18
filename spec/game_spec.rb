require 'game'

describe Game do
  let(:field) { double(:field, claim: 'x')}
  # let(:player1) { double(:player1, :play}
  subject(:game) { described_class.new }

  it 'initializes with 12 fields' do
    expect(game.fields.length).to eq 12
  end

  # describe '#play' do
  #   it 'populates one of the squares' do
  #     game.play(3)
  #     expect(fields[3].value).to be_claimed
  #   end
  # end

end
