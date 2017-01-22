require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Room'
require_relative '../Song'

class TestRoom < MiniTest::Test

  def setup

    @room = Room.new()
    @song = Song.new("Telstar", "The Tornados")

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

end