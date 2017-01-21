require_relative './Room'
require_relative './Guest'
require_relative './Lobby'
require_relative './Song'

class Karaoke

  def initialize

  #room
  @room = Room.new(6)
  
  #pretend guests
  @guest1 = Guest.new("Dave Dee", @song1, 100)
  @guest2 = Guest.new("Dozy", @song2, 20)
  @guest3 = Guest.new("Beaky", @song3, 128)
  @guest4 = Guest.new("Mick", @song4, 3)
  @guest5 = Guest.new("Titch", nil, 500)

  #songs
  @song1 = Song.new("Telstar", "The Tornados")
  @song2 = Song.new("FBI", "The Shadows")
  @song3 = Song.new("So What?", "Miles Davis")
  @song4 = Song.new("Rydeen", "YMO")
  @song5 = Song.new("Stranger on the Shore", "Acker Bilk")

  #lobby
  @lobby = Lobby.new()
end

  puts @guest1
  puts "Guests added to lobby area:"
  # @guest1.to_lobby(@lobby)
  # @guest2.to_lobby(@lobby)
  # @guest3.to_lobby(@lobby)
  # @guest4.to_lobby(@lobby)
  # @guest5.to_lobby(@lobby)

end
