require_relative('pet')

class PetShop

  def initialize (input_pets)
    @pets = input_pets
  end

  def pet_type(pet_name)
    found_pet = @pets.detect { |pet| pet.name == pet_name}
    return found_pet.type
  end

  def get_names_of_all_pets_of_type(type_search)
    filtered_pets = @pets.select { |pet| pet.type == type_search }
    return filtered_pets.collect { |dog| dog.name }
  end

  def get_number_of_pets_costing_at_least(minimum_value)
    
    @pets.count { |pet| pet.price >= minimum_value }
    
  end

end