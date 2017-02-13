require 'minitest/autorun'
require 'minitest/rg'

require_relative '../River'
require_relative '../Fish'

class FishTest < MiniTest::Test

  def setup
    @nemo = Fish.new("Nemo")

  end

  def test_fish_has_name
    assert_equal("Nemo", @nemo.name)
  end


end