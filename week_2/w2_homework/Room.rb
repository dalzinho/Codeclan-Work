class Room

  attr_reader :songs, :guests, :capacity

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

end