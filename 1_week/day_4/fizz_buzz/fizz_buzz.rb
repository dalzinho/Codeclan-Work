def add_one(number)
  return number + 1
end

def fizz_buzz(number)

  multiple_of_3 = number % 3 == 0
  multiple_of_5 = number % 5 == 0
  multiple_of_3_and_5 = multiple_of_3 && multiple_of_5

  if multiple_of_3_and_5
    return "FizzBuzz"
  end
  
  if multiple_of_3
    return "Fizz"
  end

  if multiple_of_5
    return "Buzz"
  end

  return number

end