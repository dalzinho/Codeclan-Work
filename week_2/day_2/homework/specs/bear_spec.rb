require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Bear'
require_relative '../Fish'
require_relative '../River'

class BearTest < MiniTest::Test

  def setup

    @yogi = Bear.new("Yogi")

    @nemo = Fish.new("Nemo")
    @dory = Fish.new("Dory")
    @harold = Fish.new("Harold")

    @amazon = River.new("Amazon")

  end

  def test_bear_has_name
    assert_equal("Yogi", @yogi.name)
  end

  def test_stomach_is_empty
    assert_equal(true, @yogi.stomach.empty?)
  end

  def test_bear_can_take_fish_from_river
    @amazon.fish = [@nemo, @dory, @harold]
    @yogi.eats(@harold, @amazon)

    assert_equal(2, @amazon.fish.count)
    assert_equal([@harold], @yogi.stomach)
  end

  def test_bear_can_roar
    assert_equal("RAAAAAAAAAARRRRRRR!!!!!", @yogi.roar)
  end

  def test_can_count_stomach_contents
    @yogi.eats(@nemo, @amazon)
    @yogi.eats(@dory, @amazon)
    @yogi.eats(@harold, @amazon)

    assert_equal(3, @yogi.stomach_count)
  end

  def test_does_something_unpleasant_when_in_woods
    @yogi.eats(@nemo, @amazon)
    @yogi.eats(@dory, @amazon)
    @yogi.eats(@harold, @amazon)

    assert_equal([], @yogi.is_in_woods)
  end

end
