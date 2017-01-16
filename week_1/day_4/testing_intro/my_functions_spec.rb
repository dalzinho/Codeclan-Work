require('minitest/autorun')
require('minitest/rg')

require_relative('./functions.rb')

class FunctionsTest < MiniTest::Test
  def test_multiply()
    expected_value = 15
    output_value = multiply(3, 5)

    assert_equal(expected_value, output_value)
    # assert_equal(14, 3 * 5)
  end
end
