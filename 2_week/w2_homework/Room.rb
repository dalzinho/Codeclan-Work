class Room

  attr_reader :songs, :guests, :capacity, :cost, :cash

  def initialize(capacity)
    @capacity = capacity
    @guests = []
    @songs = []
    @cost = 5
    @cash = 0
  end

  def add_song(song)
    @songs << song
  end

  def add_entry_fee
    @cash += @cost
  end
  
end