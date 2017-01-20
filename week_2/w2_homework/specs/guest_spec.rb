require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Room'
require_relative '../Guest'
require_relative '../Lobby'
require_relative '../Song'

class TestGuest < MiniTest::Test

  def setup
    @room = Room.new(6)
    @guest = Guest.new("Frank Zappa", "A Message to You, Rudy", 100)
    @poor_guest = Guest.new("Nae Money", "The Boxer", 4 )
    @song = Song.new("A Message to You, Rudy", "The Specials")
    @lobby = Lobby.new()
  end

  def test_can_pass_guest_to_lobby
    @guest.to_lobby(@lobby)
    assert_equal([@guest], @lobby.guests)
  end

  def test_can_pass_guest_to_room
    @guest.to_room(@room)
    assert_equal([@guest], @room.guests)
    assert_equal([], @lobby.guests)
  end

  def test_pay_in_guest_can_afford
    @guest.pay_entry_fee(@room)
    assert_equal(95, @guest.cash)
    assert_equal(5, @room.cash)
  end

  def test_pay_in_guest_cannot_afford
    @poor_guest.pay_entry_fee(@room)
    assert_equal(4, @poor_guest.cash)
    assert_equal(0, @room.cash)
    assert_equal("Sorry, you can't afford this room.", @poor_guest.pay_entry_fee(@room))
  end

  def test_can_detect_woo_hoo
    @room.add_song(@song)
    assert_equal(true, @guest.woo_hoo?) 
  end

end