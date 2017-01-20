class Room

  attr_reader :guests, :cash

  def initialize()

    @capacity = 6
    @songs = []
    @guests = []
    @cash = 0

  end

  def assign_guest(guest)
    @guests.push(guest)
  end

  def add_cash(entry_fee)
    @cash += entry_fee
  end

  def add_and_charge_guest(room, guest)
    if @guests.count < @capacity
      assign_guest(guest)
      guest.pay_entry_fee(room)
    end
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def assign_song(song)
    @songs << song
  end

end