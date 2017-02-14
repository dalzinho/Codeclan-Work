require_relative './Guest'
require_relative './Room'
require_relative './Song'

class Karaoke

  def cheer(guest, room)
    if guest.woo_hoo?(room) == true
      return "#{guest.name} says \"Woo hoo! This is my JAM!\""
    else
      return "#{guest.name} finds the music a bit tawdry."
    end
  end

  def run(guest, room, song)
    room.add_song(song).flatten!
    
    puts guest.send_to_room(room)
    puts "#{guest.name} now has £#{guest.cash}."
    puts "The room's cash balance is £#{room.cash}."
    if room.guests.include?(guest)
      puts cheer(guest, room)
    end
    puts "-----------------------------------------"
    puts

  end

end

#songs
@apache = Song.new("Apache", "The Shadows")
@telstar = Song.new("Telstar", "The Tornados")
@rydeen = Song.new("Rydeen", "YMO")
@all_songs = [@apache, @telstar, @rydeen]

#patrons
@genghis = Guest.new("Genghis Khan", 100, @apache)
@ivan4 = Guest.new("Ivan the Terrible", 100, @birdie_song)
@ulyanov = Guest.new("V.I. Lenin", 3, @telstar)

#room
@room = Room.new(6)
karaoke = Karaoke.new()
karaoke.run(@genghis, @room, @all_songs)
karaoke.run(@ivan4, @room, @all_songs)
karaoke.run(@ulyanov, @room, @all_songs)