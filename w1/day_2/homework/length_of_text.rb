def length_of_text(text)
  return "Text was #{text.length} characters long."
end

puts "Please copy and paste a paragraph or so here."
puts "Or make something up. Your choice."
print "> "
text = gets.chomp

puts length_of_text(text)