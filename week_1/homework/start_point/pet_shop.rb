def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash_amount)
  return pet_shop[:admin][:total_cash] += cash_amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, quantity_sold)
  return pet_shop[:admin][:pets_sold] += quantity_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  pets_found = []

  for pet in pet_shop[:pets]
    pet[:breed] == breed ? pets_found.push(pet) : next
  end

  return pets_found
end

def find_pet_by_name(pet_shop, pet_name)

  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)

  for pet in pet_shop[:pets]
    pet[:name] == pet_name ? pet_shop[:pets].delete(pet) : next
  end
  return pet_shop[:pets]
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# OPTIONAL STUFF HERE
# ===================

def customer_can_afford_pet(customer, desired_pet)
  customer[:cash] >= desired_pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  
    if pet != nil
      if customer_can_afford_pet(customer, pet) == true
      add_pet_to_customer(customer, pet)
      remove_pet_by_name(pet_shop, pet)
      increase_pets_sold(pet_shop, 1)
      add_or_remove_cash(pet_shop, pet[:price])
    end
  end
end