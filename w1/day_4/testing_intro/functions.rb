# Create a function multiply
#it should take in two numbers and return them multiplied together
def multiply(number_1, number_2)
  return number_1 * number_2
end

#Create a function of text
#it should take in a string and return the length of the string
def length_of_string(input_string)
  return input_string.length
end

#- Create a function length of name
#it should take in a first name and a second name and return the length of them combined
def length_of_name(first_name, second_name)
  return first_name.length + second_name.length
end

#- Create a function to show a bank balance
#it should take in a pin_code
#if the pin equals 1234 it should return 9999.99
#otherwise it should return “Incorrect Pin"
def show_balance(pin_code)
  if pin_code == 1234
    return 9999.99
  else
    return "Incorrect Pin"
  end
end


#- Create a divide function
#it should take in two numbers and return the first divided by the second.
def divide(number_1, number_2)
  return number_1 / number_2
end

#- Create a function that takes in a number and returns the corresponding month text.
#e.g. takes in 1 and returns January,  11 returns November
def number_to_full_month_name(number)
  month_name = case number
    when 1
      "January"
    when 2
      "February"
    when 3
      "March"
    when 11
      "November"
  end
  return month_name
end


#- Create a function that takes in a number and returns the corresponding month in shortened format.
#e.g. takes in 1 and returns Jan,  11 return Nov
def number_to_short_month_name(number)
  sliced_month_name = number_to_full_month_name(number).slice(0,3)
  return sliced_month_name
end


#- Create a function that let’s somone know if they can go on a fairground round:
#It should take in a person’s weight(kilo) and height(cm)
#If they are over 40 kilos and over 120cm return “enter”, otherwise return “sorry”
def can_go_on_ride(height, weight)
  if height > 120 && weight > 40
    return "Enter"
  else
    return "Sorry"
  end
end