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

  def test_can_get_queue

    assert_equal(Array.new(), @bus_stop.queue)

  end

  def test_person_can_join_queue

    @bus_stop.join_queue(@person1)
    assert_equal(Person, @bus_stop.queue[0].class)

  end



end