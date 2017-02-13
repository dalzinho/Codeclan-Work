class Vehicle

  attr_reader :number_of_wheels

  def initialize(number_of_wheels, driver)
    @number_of_wheels = number_of_wheels
    @driver = driver
  end

  def drive()
    return 'Brrrm!'
  end
  
end