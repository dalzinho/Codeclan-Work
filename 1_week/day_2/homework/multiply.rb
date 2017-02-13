def multiply(a, b)
  return "Easy! #{a} x #{b} = #{a * b}"
end

puts "Enter a number, human. Don't be shy, I'm quite bright."
print "> "
a = gets.chomp.to_i

puts "And a second, oh monkey-brained one."
print "> "
b = gets.chomp.to_i

puts multiply(a, b)

