require 'minitest/autorun'
require 'minitest/rg'

require_relative '../motorbike'

class TestMotorBike < MiniTest::Test

  def setup
    @motorbike = Motorbike.new()
  end

  def test_drive
    assert_equal("Brrrm! I'm a motorbike", @motorbike.drive() )
  end

  def test_number_of_wheels
    assert_equal(2, @motorbike.number_of_wheels)
  end

end