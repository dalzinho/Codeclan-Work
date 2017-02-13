require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Library.rb'

class TestLibrary < MiniTest::Test

  def setup

    @my_library = Library.new([
    { 
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
     }
     },
     {
      title: "hitchhikers_guide_to_the_galaxy",
      rental_details: {
        student_name: "Kevin",
        date: "10/02/2017"
      }
      },
      {
        title: "the_windup_bird_chronicle",
        rental_details: {
          student_name: "Gillian",
          date: "11/02/2017"
        }
        },

        ])
  end

  def test_can_list_all_texts
    assert_equal(3, @my_library.list_all_texts.count)
end
  def test_can_show_all_details
    assert_equal(String, @my_library.all_details("lord_of_the_rings").class)
  end

  def test_rental_details
    assert_equal({student_name: "Gillian", date: "11/02/2017"}, @my_library.rental_details("the_windup_bird_chronicle"))
  end

  def test_can_add_title_to_library
    @my_library.add_new_title("war_and_peace")
    assert_equal(4, @my_library.list_all_texts.count)
  end

  def test_can_amend_due_date
    @my_library.change_due_date("lord_of_the_rings", "Jeff", "16/01/2017")
    assert_equal("16/01/2017", @my_library.rental_details("lord_of_the_rings")[:date])
  end
end
