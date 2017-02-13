class Wizard

  attr_reader :name

  def initialize(name, wand)

    @name = name
    @wand = wand
   

  end

  def cast_spell(spell)
    
    @wand.cast(spell)

  end

end