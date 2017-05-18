require 'field'

describe Field do
  subject(:field) { described_class.new }

  describe '#empty?'

  it 'is has not been claimed when initialized' do
    expect(field).to be_empty
  end

  it 'is claimed if a player picks it' do
    field.claim('X')
    expect(field).not_to be_empty
  end

end
