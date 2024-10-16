require_relative 'game'
require_relative 'player'
require_relative 'car'
require_relative 'goat'
require_relative 'result_printer'

puts "Enter your name"
user_name = gets.chomp

user = Player.new(user_name)
master = Player.new("Master")

game = Game.new(user, master)
printer = ResultPrinter.new(game)

printer.print_process
