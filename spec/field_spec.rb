describe Field do
  subject(:field) { described_class.new }

  it 'is has not been claimed when initialized' do
    expect(field).not_to be_claimed
  end

end
