require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Guest'
require_relative '../Room'
require_relative '../Song'

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Frank Zappa", 100, nil)
    @unwelcome_guest = Guest.new("The guy from Boney M", 20, @song2)

    @room = Room.new(1)

    @song = Song.new("Telstar", "The Tornados")
    @song2 = Song.new("The Birdie Song", "The Tweets")
  end

  def test_can_add_guest_to_room
    @guest.send_to_room(@room)
    assert_equal([@guest], @room.guests)
  end

  def test_adds_current_room
    @guest.send_to_room(@room)
    assert_equal(@room, @guest.current_room)
  end


  def test_guest_can_leave_room
    @guest.send_to_room(@room)
    @guest.leave_room
    assert_equal([], @room.guests)
  end

  def test_turns_away_if_room_full
    @guest.send_to_room(@room)
    assert_equal("Sorry, room is full.", @unwelcome_guest.send_to_room(@room))
  end

  def test_guests_have_cash
    assert_equal(100, @guest.cash)
    assert_equal(20, @unwelcome_guest.cash)
  end

  def test_room_charges_guest
    @guest.send_to_room(@room)
    assert_equal(95, @guest.cash)
  end

  def test_can_get_favourite_song
    assert_equal(@song1, @guest.favourite_song)
    assert_equal(@song2, @unwelcome_guest.favourite_song)
  end

  # def test_can_detect_if_room_is_woo_hoo_worthy

  # end
end