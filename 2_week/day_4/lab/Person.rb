class Person

   def initialize(first_name, second_name)
    @first_name = first_name
    @second_name = second_name
  end

def talk()
  return "My name is #{@first_name.downcase.capitalize} #{@second_name.downcase.capitalize}"
end

end