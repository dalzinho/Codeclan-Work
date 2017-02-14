require('pry-byebug')

require_relative('./pizza_order') 

order1 = PizzaOrder.new({'first_name' => 'Luke', 'last_name' => 'Skywalker', 'topping' => 'Ton Ton', 'quantity' => 2})
order2 = PizzaOrder.new({'first_name' => 'Darth', 'last_name' => 'Vader', 'topping' => 'Youngling', 'quantity' => 3})

binding.pry

nil