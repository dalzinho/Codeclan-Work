class Coven

  attr_reader :members

  def initialize(members)

    @members = members

  end

  def cast_spell(spell)

    # for character in @members
    #   puts character.cast_spell(spell)
    # end

    @members.each { |character| puts character.cast_spell(spell) }
  end

end