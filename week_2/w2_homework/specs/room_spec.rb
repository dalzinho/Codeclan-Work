require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Room'
require_relative '../Guest'
require_relative '../Song'

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new()

    @guest = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest2 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest3 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest4 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest5 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest6 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest7 = Guest.new("Frank Zappa", "Immigrant Song", 100)

    @song = Song.new("A Message to You, Rudy", "The Specials")

    @some_guests = [@guest, @guest2, @guest3]
    @loads_of_guests = [@guest, @guest2, @guest3, @guest4, @guest5, @guest6]
  end

  def test_can_add_guest
    assert_equal([@guest], @room.assign_guest(@guest))
  end

  def test_can_add_and_charge_guest
    @room.add_and_charge_guest(@guest)
    assert_equal([@guest], @room.guests)
    assert_equal(95, @guest.cash)
    assert_equal(5, @room.cash)
  end

  def test_can_remove_guest_from_room
    @room.guests.push(@some_guests).flatten!  
    @room.remove_guest(@guest2)
    
    assert_equal(2, @room.guests.count)
  end

  def test_can_add_song_to_room_playlist
    @room.assign_song(@song)
    assert_equal("A Message to You, Rudy", @room.songs[0].title)
  end

  def test_can_turn_customer_away_from_full_room
    @room.guests.push(@loads_of_guests).flatten!

    assert_equal("Sorry, that room is full!", @room.add_and_charge_guest(@guest7))
  end

end