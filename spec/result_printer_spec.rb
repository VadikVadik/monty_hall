require 'result_printer'
require 'game'
require 'player'
require 'car'
require 'goat'

RSpec.describe ResultPrinter do
  let(:player) { Player.new("Player") }
  let(:master) { Player.new("Master") }
  let(:game) { Game.new(player, master) }
  let(:printer) { ResultPrinter.new(game) }

  it 'returns an instance of ResultPrinter' do
    expect(printer).to be_a ResultPrinter
    expect(printer.game).to be_a Game
  end
end
