random_number_array = []

20.times do
  random_number = rand(1000)
  random_number_array << random_number
end

print random_number_array
puts
print random_number_array.sort
