require 'game'

describe Game do
  let(:field) { double(:field, empty?: nil, claim: 'X')}
  let(:field_class) { double(:field_class, new: field)}
  let(:grid) { double(:grid) }
  # let(:player1) { double(:player1, :play}
  subject(:game) { described_class.new(grid) }

  it 'initializes with a grid' do
    expect(game.grid).to eq grid
  end

  describe '#play' do
    it 'populates a given empty field' do
      allow(field).to receive(:empty?).and_return(true)
      expect(field).to receive(:claim).with('X')
      game.play(0,0,'X')
    end

    it 'does not populate a claimed field' do
      allow(field).to receive(:empty?).and_return(false)
      expect(field).not_to receive(:claim).with('O')
      game.play(0,0, 'O')
    end
  end

  describe '#finished?' do
    # it 'is not finished unless there is a win or all fields have been claimed' do
    #   expect(game.finished?).to eq false
    # end

    context 'yes' do
      before { allow(field).to receive(:value).and_return 'X'}

      it 'if top row has been claimed by the same player' do
        (0...2).each { |column| game.play(0,column, 'X') }
        expect(game.finished?).to eq true
      end
    end
  end

end
