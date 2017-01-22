class Room

  attr_reader :songs, :guests

  def initialize
    @guests = []
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

end