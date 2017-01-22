class Guest

  attr_reader :current_room

  def initialize(name)
    @name = name
    @current_room = nil
  end

  def send_to_room(room)
    if room.guests.count < room.capacity
      room.guests << self
      @current_room = room
    else
      return "Sorry, room is full."
    end
  end

  def leave_room
    @current_room.guests.delete(self)
  end

end