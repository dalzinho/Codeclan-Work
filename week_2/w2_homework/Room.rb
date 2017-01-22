class Room

  attr_reader :songs, :guests

  def initialize
    @guests = []
    @songs = []
  end
end