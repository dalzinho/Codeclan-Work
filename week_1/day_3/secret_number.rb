secret_number = rand(1..9)
puts "Догадай тайную сифру. Она между 1 и 9."
user_guess = gets.chomp

while user_guess.to_i != secret_number
  puts "Не правильно! Догадай снова."
  user_guess = gets.chomp
end

puts "Поздравляю! Это совершенно правильно!"


