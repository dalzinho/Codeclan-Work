require_relative './Person'

class Agent < Person

  def talk()
    return "The name's #{@second_name.downcase.capitalize}, #{@first_name.downcase.capitalize} #{@second_name.downcase.capitalize}."
  end

end