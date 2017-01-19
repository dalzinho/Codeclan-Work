class Bear

  attr_reader :name, :stomach

  def initialize(name)

    @name = name
    @stomach = Array.new()

  end

  def eats(fish, river)
    @stomach << fish if !fish.nil?
    river.fish_eaten(fish)
  end

  def roar()
    return "RAAAAAAAAAARRRRRRR!!!!!"
  end

  def stomach_count
    return @stomach.count
  end

  def is_in_the_woods
    @stomach.clear
  end


end