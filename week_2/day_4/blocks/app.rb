def add_one( items )

  result = []
  for item in items
    result << item + 1
  end

  return result

  # items.map { |item| item + 1}

end

def double(items)

  result = []

  for item in items
    result << item * 2
  end

  return result

  # items.map { |item| item * 2 }

end

def up_to_you
  return yield
end

def up_to_you_hello
  name = "John"
  return yield( name )
end

def map( items )

  result = []

  for item in items
    result << yield( item )
  end

  return result

end