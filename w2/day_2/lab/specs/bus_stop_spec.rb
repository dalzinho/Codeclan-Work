require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Bus'
require_relative '../Person'
require_relative '../BusStop'

class TestBusStop < MiniTest::Test

  def setup

    @bus_stop = BusStop.new("Calder Street")
    @person1 = Person.new("Passenger1", 1)
    @person2 = Person.new("Passenger2", 2)
    @person3 = Person.new("Passenger3", 3)

  end

  def test_can_get_name

    assert_equal("Calder Street", @bus_stop.name)

  end

  def test_queue_is_empty

    assert_equal(0, @bus_stop.number_waiting)

  end

  def test_person_can_join_queue

    @bus_stop.join_queue(@person1)
    @bus_stop.join_queue(@person2)
    assert_equal(2, @bus_stop.number_waiting)

  end

  def test_queue_empties_when_bus_arrives
  
    @bus_stop.join_queue(@person1)
    @bus_stop.join_queue(@person2)
    @bus_stop.join_queue(@person3)

    @bus_stop.bus_arrives

    assert_equal(0, @bus_stop.number_waiting)
  end
  
end