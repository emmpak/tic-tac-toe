require 'field'

describe Field do
  subject(:field) { described_class.new }

  describe '#claimed?'

  it 'is has not been claimed when initialized' do
    expect(field).not_to be_claimed
  end

  it 'is claimed if a player picks it' do
    field.claim('X')
    expect(field).to be_claimed
  end

end
