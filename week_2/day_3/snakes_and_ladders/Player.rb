class Player

  attr_reader :name, :current_position

  def initialize(name, board, dice)
    @name = name
    @board = board
    @current_position = 0
    @dice = dice
  end

  def move(dice_value)
    @current_position += dice_value
  end

  def take_turn
    unless @current_position == @board.board.count
      roll = @dice.roll
      move(roll)

      unless @current_position >= @board.board.count
        @current_position += @board.board[@current_position] 
        return @current_position
      end
    end
    return "You have won!"
  end

end
