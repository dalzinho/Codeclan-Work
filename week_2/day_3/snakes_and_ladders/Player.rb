class Player

  attr_reader :name, :current_position

  def initialize(name)
    @name = name
    @current_position = 0
  end

  def move(dice_value)
    @current_position += dice_value
  end

  def has_won?
    @current_position >= 100
  end

  # def on_snake_head?(snakes)
  #   for snake in snakes
  #     if @current_position == 

end
