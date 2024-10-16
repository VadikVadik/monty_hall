require 'prize'

RSpec.describe Prize do
  let(:prize) { Prize.new }

  it 'returns an instance of Prize' do
    expect(prize).to be_a Prize
    expect(prize.type).to eq('No type')
  end
end
