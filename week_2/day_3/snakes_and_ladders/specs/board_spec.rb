require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Board'
require_relative '../Player'
require_relative '../Dice'

class BoardTest < MiniTest::Test

  def setup
    @dice = Dice.new()
    @board = Board.new()
    @player = Player.new("John")
  end

  def test_player_moves_on_dice_roll

  end

end