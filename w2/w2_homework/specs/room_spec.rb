require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Room'
require_relative '../Song'
require_relative '../Guest'

class TestRoom < MiniTest::Test

  def setup

    @room = Room.new(6)
    @song = Song.new("Telstar", "The Tornados")
    @guest = Guest.new("Frank Zappa", 100, @song)

  end

  def test_can_get_songs
    assert_equal([], @room.songs)
  end

  def test_can_get_guests
    assert_equal([], @room.guests)
  end

  def test_can_add_song_to_room
    @room.add_song(@song)
    assert_equal([@song], @room.songs)
  end

  def test_room_reports_capacity
    assert_equal(6, @room.capacity)
  end

  def test_room_gets_guest_cash
    @guest.send_to_room(@room)
    assert_equal(5, @room.cash)
  end


end