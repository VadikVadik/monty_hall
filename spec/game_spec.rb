require 'game'
require 'player'
require 'car'
require 'goat'

RSpec.describe Game do
  let(:player) { Player.new("Player") }
  let(:master) { Player.new("Master") }
  let(:game) { Game.new(player, master) }
  let(:goats) { game.awards.select { |a| a.is_a?(Goat) } }
  let(:cars) { game.awards.select { |a| a.is_a?(Car) } }

  it 'returns an instance of Game' do
    expect(game).to be_a Game
    expect(game.player).to be_a Player
    expect(game.master).to be_a Player
    expect(game.awards).to be_a Array
    expect(game.door_numbers).to eq(['1', '2', '3'])
  end

  it 'places 2 goats and 1 car in awards array' do
    expect(goats.size).to eq(2)
    expect(cars.size).to eq(1)
  end
end
