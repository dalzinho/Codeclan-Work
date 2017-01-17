require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Bus'
require_relative '../Person'

class TestBus < MiniTest::Test

  def setup

    @bus = Bus.new(4, "Broomhill", [])

    @john = Person.new("John", 36)

  end

  def test_bus_has_number
    assert_equal(4, @bus.number)
  end

  def test_bus_has_destination
    assert_equal("Broomhill", @bus.destination)
  end

  def test_bus_can_drive
    assert_equal("Vroom VROOM!", @bus.drive)
  end

  def test_bus_has_passengers
    assert_equal([], @bus.passengers)
  end

  def test_passengers_can_get_on

    @bus.get_on(@john)
    assert_equal(1, @bus.passengers.count)

  end

  def test_passengers_can_get_off

    @bus.get_on(@john)
    @bus.drop_off(@john)

    assert_equal(0, @bus.passengers.count)
  end
  

end
