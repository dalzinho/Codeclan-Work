class Guest

  attr_reader :cash
  def initialize(name, favourite_song, cash)
    @name = name
    @favourite_song = favourite_song
    @cash = cash
    @bar_bill = 0
  end

  def to_lobby(lobby)
    lobby.guests.push(self)
  end

  def to_room(room)
    room.guests.push(self)
  end

  def pay_entry_fee(room)
    if @cash >= 5
      @cash -= 5 
      room.add_cash(5)
    else
      return "Sorry, you can't afford this room."

    end
  end


  # def woo_hoo?

  # @room.songs.each do |song|
  #   @room.guests.each { |guest| guest.favourite_song == song }
  # end



end