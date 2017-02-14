def months(number)
case number
  when 1
    return "January"
  when 2
    return "February"
  when 3
    return "March"
  when 4
    return "April"
  when 5
    return "May"
  when 6
    return "June"
  when 7
    return "July"
  when 8
    return "August"
  when 9
    return "September"
  when 10
    return "October"
  when 11
    return "November"
  when 12
    return "December"
  else
    return "Clearly the Earth's rotation, and both lunar and solar orbits are irrelevant to you. You lucky devil!"
  end
end

puts "If you tell me a number between 1 and 12, I will helpfully tell you the name of the corresponding month!"
print "> "
number = gets.chomp.to_i
   
puts months(number)