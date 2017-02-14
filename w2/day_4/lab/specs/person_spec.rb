require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Person'

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("John", "Daly")
  end

  def test_can_say_name
    assert_equal("My name is John Daly", @person.talk)
  end


end
