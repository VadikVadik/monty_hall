class ResultPrinter
  attr_accessor :game

  def initialize(game)
    @game = game
  end

  def separator
    40.times { print '=' }
    puts
  end

  def choose_door_line
    line = ""
    game.door_numbers.each { |num| line += "#{num}, " }
    line.gsub!(/, $/, '')
    "#{game.player.name}, which door do you choose (#{line})?"
  end

  def print_process
    puts choose_door_line
    game.main_game
    system("clear")
    puts "Your choice is door number #{game.player.choise.to_s}"
    separator
    puts "There is a goat behind door #{game.master.choise.to_s}"
    separator
    puts choose_door_line
    game.player_move
    system("clear")
    game.player.vin? ? puts("You vin!") : puts("You lose!")
  end
end
