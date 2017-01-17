class Wizard

  attr_reader :name

  def initialize(name, wand_wood, wand_core)

    @name = name
    @wood = wand_wood
    @core = wand_core

  end

  def cast_spell(spell_name)
    if @wood == "Yew" && @core == "Phoenix Feather"
      return spell_name.upcase()
    end

    return spell_name
  end

end