class Guest

  attr_reader :current_room

  def initialize(name)
    @name = name
    @current_room = nil
  end

  def send_to_room(room)
    room.guests << self
    @current_room = room
  end

  def leave_room
    @current_room.guests.delete(self)
  end

end