class Guest

  attr_reader :current_room, :cash, :favourite_song, :name

  def initialize(name, cash, favourite_song)
    @name = name
    @current_room = nil
    @cash = cash
    @favourite_song = favourite_song
  end

  def pay_entry(room)
    @cash -= room.cost
    room.add_entry_fee
  end

  def send_to_room(room)
    if @cash >= room.cost
      if room.guests.count < room.capacity
        room.guests << self
        @current_room = room
        pay_entry(room)
        return "#{self.name} enters the room."
      else
        return "#{self.name} is turned away. The room is full."
      end
    else return "#{self.name} cannot afford to get in."
    end
  end

  def leave_room
    @current_room.guests.delete(self)
  end

  def woo_hoo?(room)
    room.songs.include?(@favourite_song)
  end

end