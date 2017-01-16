def length_of_name(first_name, second_name)
  return "Total name length: #{first_name.length + second_name.length} characters."
end

puts "Your first name, stranger?"
print "> "
first_name = gets.chomp
puts "And your last name?"
print "> "
second_name = gets.chomp

puts "You may be alarmed to learn that your name is #{first_name.length + second_name.length} characters long."

