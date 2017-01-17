class Bus

  attr_reader :number, :destination, :passengers

  def initialize(number, destination)

    @number = number
    @destination = destination
    @passengers = []

  end

  def drive()
    return "Vroom VROOM!"
  end

  def get_on(person)

    @passengers << person

  end

  def drop_off(person)
    # for passenger in @passengers
    #   if passenger.name == person.name
        @passengers.delete(person)
    #   end
    # end
    # return "Passenger not found!"
  end

  def empty!
    @passengers = []
  end

 def pick_up_from_stop(bus_stop)
  @passengers << bus_stop.queue.flatten
  bus_stop.bus_arrives

end

end
