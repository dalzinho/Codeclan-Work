require('pry-byebug')

require_relative('./pizza_order') 
require_relative('./customer')

customer1 = Customer.new({'name' => 'Ken Barlow'})
customer2 = Customer.new({ 'name' => 'Deirdre Barlow'})

customer1.save
customer2.save

order1 = PizzaOrder.new({'topping' => 'Ton Ton', 'quantity' => 2, 'customer_id' => customer1.id})
order2 = PizzaOrder.new({'topping' => 'Youngling', 'quantity' => 3, 'customer_id' => customer2.id})  

binding.pry

nil