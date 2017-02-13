require_relative('./functions.rb')

puts "multiply 3 and 6 equals #{multiply(3,6)}"
puts "length of string hello is #{length_of_string("hello")}"
puts "length of name Jay Chetty is #{length_of_name("Jay", "Chetty")}"
puts "balance with pin 1234 #{show_balance(1234)}"
puts "balance with pin 5555 #{show_balance(5555)}"
puts "10 divided by 5 equals #{divide(10, 5)}"
puts "full name of month 1 is  #{number_to_full_month_name(1)}"
puts "full name of month 11 is  #{number_to_full_month_name(11)}"
puts "short name of month 1 is  #{number_to_short_month_name(1)}"
puts "short name of month 11 is  #{number_to_short_month_name(11)}"
puts "Person of height 100, weight 80 going on ride  #{can_go_on_ride(100, 80)}"
puts "Person of height 180, weight 80 going on ride  #{can_go_on_ride(180, 80)}"