class Cat

  def silly(a)

    age = 6

    if a > 0
      puts 'Meow'
    else
      puts 'Meow' + age
    end
  end
end

class Dog

end 

myCat = Cat.new()
myCat.silly(-2)
  # mycat = Dog.new()