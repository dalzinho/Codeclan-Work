class Room

  attr_reader :guests, :cash, :songs

  def initialize(capacity)

    @capacity = capacity
    @songs = []
    @guests = []
    @cash = 0

  end

  def add_cash(entry_fee)
    @cash += entry_fee
  end

  def add_and_charge_guest(guest)
    if @guests.count < @capacity
      guest.to_room(self)
      guest.pay_entry_fee(self)
    else
      return "Sorry, that room is full!"
    end
  end

  def remove_guest(guest, lobby)

    guest.to_lobby(lobby)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs << song
  end

  

end