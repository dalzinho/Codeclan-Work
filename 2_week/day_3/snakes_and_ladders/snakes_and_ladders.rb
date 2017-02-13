require_relative './Board'
require_relative './Dice'
require_relative './Player'

board = Board.new()
dice = Dice.new()
player = Player.new("Zebedee", board, dice)

10.times do
  puts player.take_turn
end

