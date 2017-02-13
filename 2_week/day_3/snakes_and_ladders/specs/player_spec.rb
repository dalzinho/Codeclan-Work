require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Player'
require_relative '../Board'
require_relative '../Dice'

class PlayerTest < MiniTest::Test
  
  def setup

    @board = Board.new()
    @dice = Dice.new()
    @player_1 = Player.new("Player One", @board, @dice)
    
  end

  def test_player_has_name
    assert_equal("Player One", @player_1.name)
  end

  def test_can_access_position
    assert_equal(0, @player_1.current_position)
  end

  def test_can_increment_position
    assert_equal(6, @player_1.move(6))
  end

end
