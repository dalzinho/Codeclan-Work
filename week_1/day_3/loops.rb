counter = 2
my_number = 1_000_000_000_000_000

while counter < my_number
  puts "The value of the counter is #{counter}."
  counter **= 2
end