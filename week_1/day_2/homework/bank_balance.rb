def bank_balance(pin)
  if pin == 1234
    return "Balance: £9999.99"
  else
    return "Incorrect PIN"
  end
end

puts "What is your PIN number?"
print "> "
pin = gets.chomp.to_i

puts bank_balance(pin)