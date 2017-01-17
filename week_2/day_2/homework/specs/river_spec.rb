require 'minitest/autorun'
require 'minitest/rg'

require_relative '../River'
require_relative '../Fish'

class RiverTest < MiniTest::Test

  def setup
    @amazon = River.new("Amazon")

    @nemo = Fish.new("Nemo")
    @dory = Fish.new("Dory")
    @harold = Fish.new("Harold")


  end

  def test_river_has_name
    assert_equal("Amazon", @amazon.name)
  end

  def test_river_has_no_fish
    assert_equal(0, @amazon.count_fish)
  end

  def test_river_can_have_many_fish
    @amazon.fish << @nemo
    @amazon.fish << @dory

    assert_equal(2, @amazon.count_fish)
  end

end
