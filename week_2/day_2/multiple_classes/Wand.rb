class Wand

  attr_reader :wand_wood

  def initialize(wood, core)
    @wand_wood = wood
    @wand_core = core
  end

  def cast(spell)
    
    if @wand_wood == "Holly" && @wand_core == "Phoenix Feather"
      return spell.upcase()
    end

    return spell
  end

end
