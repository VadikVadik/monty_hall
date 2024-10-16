class Game
  attr_accessor :door_numbers
  attr_reader :player, :master, :awards

  def initialize(player, master)
    @player = player
    @master = master
    @awards = [Car.new, Goat.new, Goat.new].shuffle
    @door_numbers = %w(1 2 3)
  end

  def player_move
    choise = gets.chomp.to_i
    player.choise = choise
    award = awards[choise - 1]
    player.status = 1 if award.is_a?(Car)
  end

  def master_move
    door = awards.select do |award|
      award.is_a?(Goat) && awards.index(award) + 1 != player.choise
    end.sample

    door_number = awards.index(door) + 1
    master.choise = door_number
    door_numbers.delete(door_number.to_s)
  end

  def main_game
    player_move
    master_move
  end
end
