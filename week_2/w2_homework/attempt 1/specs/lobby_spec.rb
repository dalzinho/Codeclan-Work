require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Lobby'
require_relative '../Guest'


class TestRoom < MiniTest::Test

  def setup

    @room = Room.new(6)

    @guest = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest2 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest3 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest4 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest5 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest6 = Guest.new("Frank Zappa", "Immigrant Song", 100)
    @guest7 = Guest.new("Frank Zappa", "Immigrant Song", 100)

  end



end