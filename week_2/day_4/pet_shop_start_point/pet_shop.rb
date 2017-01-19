require_relative('pet')

class PetShop

  def initialize (input_pets)
    @pets = input_pets
  end

  def pet_type(pet_name)
    merlin = @pets.find { |pet| pet.name == pet_name}
    return merlin.type
  end

  def get_names_of_all_pets_of_type(type)
      
    dogs = @pets.select { |pet| pet.type == type }
    return dogs.collect { |dog| dog.name }
  end

  def get_number_of_pets_costing_at_least(minimum_value)

    expensive_pets = @pets.select { |pet| pet.price >= minimum_value }
    return expensive_pets.count


  end
end