class Library

  def initialize(library_array)

    @books = library_array

  end

  def list_all_texts

    list_of_books = []
    for book in @books
      list_of_books << "Title: #{book[:title]}\tLoaned to: #{book[:rental_details][:student_name]}\tDue: #{book[:rental_details][:date]}"

    end

    return list_of_books
  end

  def all_details(title)
    for book in @books
      if book[:title] == title
        return "Title: #{book[:title]}\tLoaned to: #{book[:rental_details][:student_name]}\tDue: #{book[:rental_details][:date]}"
      end
    end

    return "Title not found!"
  end

  def rental_details(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end

    return "Title not found!"
  end

  def add_new_title(title)
    @books.push({
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
      })
  end

  def change_due_date(title, student_name, new_date)
    for book in @books
      if title == book[:title] && student_name == book[:rental_details][:student_name]
        book[:rental_details][:date] = new_date
      end
    end

    return "Title not found!"
  end

end

my_library = Library.new([
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

puts my_library.list_all_texts
# puts my_library.all_details("lord_of_the_rings")
# puts my_library.rental_details("the_windup_bird_chronicle")

# my_library.add_new_title("War and Peace")
# my_library.list_all_texts

# my_library.change_due_date("lord_of_the_rings", "Jeff", "16/01/17")
# puts my_library.all_details("lord_of_the_rings")