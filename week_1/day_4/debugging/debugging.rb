

def return_number_from_string( string )
  return string.to_f
end

def my_name_capitalized( name )
  if name.class == String
    return name.upcase
  end
end

def text_lower_case( text )
  if text.class == String
    return text.downcase
  end
end

def my_calc( num1, num2, operator )
  # if !operator 
  #   operator = 'addd'
  # end

  case operator
    when 'add'
      return num1 + num2
    when 'subtract' 
      return num1 - num2
    when 'divide'
      return num1 / num2
    when 'multiply'
      return num1 * num2
    else
      return num1 + num2
  end
end


def print_score( resultsArray )

  def  transform_array( team_result )
    return "#{teamResult[0]}: #{teamResult[2]}"
  end

  for team in resultsArray 
    transform_array( resultsArray[team] )
  end

end



