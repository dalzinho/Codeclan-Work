require('minitest/autorun')
require('minitest/rg')
require_relative('../wizard')

class TestWizard < MiniTest::Test

  def setup
    @ron = Wizard.new("Ron Weasley", "oak", "unicorn hair")
    @harry = Wizard.new("Harry Potter", "Yew", "Phoenix Feather")
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