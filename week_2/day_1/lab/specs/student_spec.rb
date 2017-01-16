require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Student.rb'

class TestStudent < MiniTest::Test

  def setup
    @john = Student.new("John", 1)
    @daniel = Student.new("Daniel", 1)
    @tinkerbell = Student.new("Tinkerbell", 3)
  end

  def test_student_get_name
 

    assert_equal("Daniel", @daniel.name)
  end

  def test_student_get_cohort
    assert_equal(1 , @daniel.cohort)
  end

  def test_change_student_name
    assert_equal("Frank", @daniel.name = "Frank")
  end

  def test_change_student_cohort
    assert_equal(3, @daniel.cohort = 3)
  end

  def test_student_can_talk
    assert_equal("I'm STUCK!!!!1", @daniel.talk)
  end

  def test_student_favourite_language
    assert_equal("I love Ruby!", @john.say_favourite_language("Ruby"))
  end
end