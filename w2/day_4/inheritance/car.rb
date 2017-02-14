require_relative './Vehicle'

class Car < Vehicle

  attr_reader :model
  
  def initialize(model)
    super(4)
    @model = model
  end

  def drive()
    return super() + " I'm a car"
  end

end