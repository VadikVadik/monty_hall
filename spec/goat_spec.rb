require 'goat'

RSpec.describe Goat do
  let(:goat) { Goat.new }

  it 'returns an instance of Goat' do
    expect(goat).to be_a Goat
    expect(goat.type).to eq(:goat)
  end
end
