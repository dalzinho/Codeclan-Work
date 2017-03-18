def fib(n)
  # Thread.new do
  return 1 if n < 3
  return fib(n - 1) + fib(n - 2)
 # end
end

def fib_thread(input)
  Thread.new do
    start_time = Time.now
    puts input
    result = fib(input)
    end_time = Time.now
    puts result
    puts "That took #{(end_time - start_time)} seconds."

  end
end



num_to_calc = 2
while true
 fib_thread(num_to_calc)
 num_to_calc ** 2
end