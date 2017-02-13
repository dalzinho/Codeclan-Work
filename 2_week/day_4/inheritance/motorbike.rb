require_relative './Vehicle'

class Motorbike < Vehicle

  def initialize
    super(2)
  end

  def drive()
    return super() + " I'm a motorbike"
  end

  def wheelie()
    return "WHEEEEEEE!"
  end

end