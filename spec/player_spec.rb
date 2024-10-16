require 'player'

RSpec.describe Player do
  let(:player) { Player.new("Player") }

  it 'returns an instance of Player' do
    expect(player).to be_a Player
    expect(player.name).to eq("Player")
    expect(player.status).to eq(0)
    expect(player.choise).to be_nil
  end
end
