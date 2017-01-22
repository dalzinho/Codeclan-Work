class Guest

  attr_reader :current_room, :cash, :favourite_song

  def initialize(name, cash, favourite_song)
    @name = name
    @current_room = nil
    @cash = cash
    @favourite_song = favourite_song
  end

  def send_to_room(room)
    if room.guests.count < room.capacity
      room.guests << self
      @current_room = room
    else
      return "Sorry, room is full."
    end
  end

  def pay_entry(room)
    @cash -= room.cost
    room.add_entry_fee
  end

  def leave_room
    @current_room.guests.delete(self)
  end

  def woo_hoo?(room)
    room.songs.include?(@favourite_song)
  end

end