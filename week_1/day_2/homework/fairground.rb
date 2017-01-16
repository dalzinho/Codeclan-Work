def fairground(height, weight)
  if height > 1.4 && weight >  40
    puts "Enter!"
  else
    puts "Sorry! You're too wee!"
  end

  bmi = ((weight.to_f / height) / height)

  if bmi < 18.5
    description = "underweight"
  elsif bmi >= 18.5 && bmi <= 24.9
    description = "a healthy weight"
  elsif bmi >= 25 && bmi <= 29.9
    description = "overweight"
  elsif bmi >= 30
    description = "obese"
  end

  puts "Incidentally, your BMI of #{bmi} means you are #{description}, medically speaking!"
end

puts "How tall are you in metres?"
print "> "
height = gets.chomp.to_f
puts ''
puts "How heavy are you in kilos?"
print "> "
weight = gets.chomp.to_f

puts fairground(height, weight)
