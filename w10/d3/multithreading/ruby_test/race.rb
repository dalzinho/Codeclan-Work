def increment(num)
  num + 1
end

sum = 0
threads = (1..10).map do
  Thread.new do
    100_000.times { sum = increment(sum)}
  end
end

threads.each(&:join)
puts sum