require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Room'
require_relative '../Guest'

class TestGuest < MiniTest::Test

  def setup
    @room = Room.new()
    @guest = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @poor_guest = Guest.new("Nae Money", "The Boxer", 4 )
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
  end  

end