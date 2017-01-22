class Room

  attr_reader :songs, :guests, :capacity

  def initialize(capacity)
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

end