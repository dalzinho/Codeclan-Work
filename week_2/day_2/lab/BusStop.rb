class BusStop

  attr_reader :name, :queue

  def initialize(name)

    @name = name
    @queue = []

  end

  def join_queue(person)
    @queue << person
  end

  def bus_arrives
    @queue = []
  end

end