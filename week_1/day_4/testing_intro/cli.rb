require_relative('./functions.rb')

puts 'Enter your PIN'
pin_code = gets.chomp().to_i()

puts "Your Balance is..."
puts show_balance(pin_code)