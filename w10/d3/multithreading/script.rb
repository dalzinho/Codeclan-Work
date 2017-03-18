# question = "Who should I say hello to?"

# puts question

# input = gets.chomp

# while input != "quit"
#   puts "Okay!"
#   puts "Hello #{input}!"
#   puts question
#   input = gets.chomp
# end

# def puts_later(word, seconds_to_wait)
#   sleep(seconds_to_wait)
#   puts word
# end

# puts "Hi"
# puts_later("bye", 4)
# puts "What's up?" # this line won't execute until after "bye"

def puts_later(word, seconds_to_wait)
  Thread.new do
    sleep(seconds_to_wait)
    puts word
  end
end

puts "Hi"
thread1 = puts_later("bye", 4)
thread2 = puts_later("adiós", 5)
thread3 = puts_later("do svidaniya", 6)
thread4 = puts_later("tschuss", 7)
thread5 = puts_later("cheerio!", 8)
puts "What's up?" # this line won't execute until after "bye"
thread1.join
thread2.join
thread3.join
thread4.join
thread5.join
