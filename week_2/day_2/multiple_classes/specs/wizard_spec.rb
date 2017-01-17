require('minitest/autorun')
require('minitest/rg')
require_relative('../wizard')
require_relative('../wand')

class TestWizard < MiniTest::Test

  def setup
    @broken_wand = Wand.new("Oak", "Unicorn Hair")
    @elder_wand = Wand.new("Holly", "Phoenix Feather")
    @ron = Wizard.new("Ron Weasley", @broken_wand)
    @harry = Wizard.new("Harry Potter", @elder_wand)
  end

  def test_wizard_has_name
    assert_equal("Ron Weasley", @ron.name)
  end

  def test_cast_spell
    assert_equal("Lumos", @ron.cast_spell("Lumos"))
  end

  def test_can_cast_strong_spell
    assert_equal("EXPECTO PATRONUM", @harry.cast_spell("expecto patronum"))
  end

end