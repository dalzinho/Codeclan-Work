class BusStop

  attr_reader :queue

  def initialize(name)

    @name = name
    @queue = Array.new()

  end

  def name
    return @name
  end

  def number_waiting
    return @queue.length
  end

  def join_queue(person)
    @queue << person
  end

  def bus_arrives
    @queue.clear
  end

end