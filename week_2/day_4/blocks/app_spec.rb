require ('minitest/autorun')
require ('minitest/rg')

require_relative ('./app')

class TestApp < MiniTest::Test

  def setup
    @array = [1,2,3]
  end

  def test_Adds_One_To_Each_Item
    assert_equal([2,3,4], map(@array) { |item| item + 1 } )
  end

  def test_multiply_each_item_by_two
    assert_equal([2,4,6], map(@array) { |item| item * 2 })
  end

  def test_add_up_to_you
    assert_equal( 1026, up_to_you { 54 * 19 } )
  end

  def test_up_to_you_hello
    assert_equal( "Hello John", up_to_you_hello { |name| "Hello " + name })
  end

  def test_array_map_add_one
    result = @array.map { |item| item + 1 }
    assert_equal([2,3,4], result)
  end

end
