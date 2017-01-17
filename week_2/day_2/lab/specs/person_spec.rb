require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Person'

class TestPerson < MiniTest::Test

  def setup

    @person = Person.new("Lucille", 25)

  end

  def test_person_name
    assert_equal("Lucille", @person.name)
  end

  def test_person_age
    assert_equal(25, @person.age)
  end
  
end