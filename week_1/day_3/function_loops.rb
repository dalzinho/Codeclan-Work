chicken_hashes = [
  { name: "John", eggs: 0, age: 2},
  { name: "George", eggs: 3, age: 1},
  { name: "Paul", eggs: 8, age: 64},
  { name: "Ringo", eggs: 33, age: 7},
  { name: "Keith", eggs: 12, age: 9},
]

# def count_eggs(array)

#   total_eggs = 0

#   for chicken in array
#     total_eggs += chicken[:eggs]
#     chicken[:eggs] = 0
#   end

#   return total_eggs.to_s + " egg(s) collected."
# end

# puts count_eggs(chicken_hashes)

def find_chicken_by_name(array, name)

  for chicken in array
    if chicken[:name] == name
      return "I found #{name}."
    end
  end

  return "There is no #{name} among these chickens."
end

puts find_chicken_by_name(chicken_hashes, "Mick")