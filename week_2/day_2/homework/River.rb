class River

  attr_reader :name
  attr_accessor :fish

  def initialize(name)
    @name = name
    @fish = Array.new
  end

  def fish_eaten(name)
    @fish.delete(name)
  end

  def count_fish
    @fish.count
  end

end
