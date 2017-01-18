require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Player'
require_relative '../Board'

class PlayerTest < MiniTest::Test
  
  def setup

    
    @player_1 = Player.new("Player One")
    # @snake = [
    #   {
    #     head: 19
    #     tail: 12
    #   }
    # ]

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

  def test_if_player_has_won
    @player_1.move(100)

    assert_equal(true, @player_1.has_won?)
  end

  # def test_has_landed_on_snake
  #   assert_equal()
  # end

end
