def divide(a, b)
  return "#{a.to_i} / #{b} = #{a / b}"
end

puts "Enter a number, human. Don't be shy, I'm quite bright."
print "> "
a = gets.chomp.to_f

puts "And a second, oh monkey-brained one."
print "> "
b = gets.chomp.to_i

puts divide(a, b)

