class Board

  def take_turn(player, dice)
    unless player.has_won?
      roll = dice.roll
      player.move(roll)
    end
    return player.current_position
  end

end