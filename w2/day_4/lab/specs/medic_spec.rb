require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Medic'

class MedicTest < MiniTest::Test

  def setup
    @medic = Medic.new("hawkeye", "pearce")
  end

  def test_can_say_name
    assert_equal("My name is Hawkeye Pearce", @medic.talk)
  end

  def test_can_heal
    assert_equal("The patient's condition miraculously improves!", @medic.heal)
  end

end