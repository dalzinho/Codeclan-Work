class Guest

  attr_reader :cash
  def initialize(name, favourite_song, cash)
    @name = name
    @favourite_song = favourite_song
    @cash = cash
    @bar_bill = 0
  end

  def pay_entry_fee(room)
    if @cash >= 5
      @cash -= 5 
      room.add_cash(5)
    end
  end

end