require_relative '../Wand'
require_relative '../Wizard'
require_relative '../Coven'

@elder_wand = Wand.new("Holly", "Phoenix Feather")
@broken_wand = Wand.new("Oak", "Unicorn Hair")
@elm_wand = Wand.new("Elm", "Dragon Heartstring")

@harry = Wizard.new("Harry Potter", @elder_wand)
@ron = Wizard.new("Ronald Weasley", @broken_wand)
@hermione = Wizard.new("Hermione Granger", @elm_wand)

coven_1 = Coven.new([@harry, @ron, @hermione])

coven_1.cast_spell("Leviosa")