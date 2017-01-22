require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Guest'
require_relative '../Room'

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Frank Zappa")
    @room = Room.new()
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

end