require('minitest/autorun')
require('minitest/rg')

require_relative('./fizz_buzz.rb')

class FizzBuzzTest < MiniTest::Test
  
  def test_adds_one_5_is_6
    expected_value = 6
    output_value = add_one(5)
    assert_equal(expected_value, output_value)
  end

  def test_fizzbuzz_returns_number
    assert_equal(1, fizz_buzz(1))
  end

  def test_fizzbuzz_3_returns_fizz
    assert_equal( "Fizz", fizz_buzz(3) )
  end

  def test_fizzbuzz_5_returns_buzz
    assert_equal( "Buzz", fizz_buzz(5) )
  end

  def test_on_6_return_fizz
    assert_equal( "Fizz", fizz_buzz(6) )
  end

  def test_on_10_return_buzz
    assert_equal( "Buzz", fizz_buzz(10) )
  end

  def test_multiples_of_15_return_fizzbuzz
    assert_equal( "FizzBuzz", fizz_buzz(15))
  end

end