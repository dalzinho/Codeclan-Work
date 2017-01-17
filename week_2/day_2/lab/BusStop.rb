class BusStop

  attr_reader :name, :queue

  def initialize(name)

    @name = name
    @queue = Array.new

  end

  def join_queue(person)
    @queue << person
  end

  def bus_arrives
    @queue.clear
  end

end