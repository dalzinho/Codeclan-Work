question = "Who should I say hello to?"

puts question

input = gets.chomp

while input != "quit"
  puts "Okay!"
  puts "Hello #{input}!"
  puts question
  input = gets.chomp
end