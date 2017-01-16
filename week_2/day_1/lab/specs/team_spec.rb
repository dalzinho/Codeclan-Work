require 'minitest/autorun'
require 'minitest/rg'

require_relative '../Team.rb'

class TestTeam < MiniTest::Test

  def setup
    @pollok = Team.new("Pollok", ["Hanlon", "Sideserf", "Gallacher"], "McInally")
  end

  def test_can_get_team_name
    assert_equal("Pollok", @pollok.name)
  end

  def test_can_get_players
    assert_equal(["Hanlon", "Sideserf", "Gallacher"], @pollok.players)
  end

  def test_can_get_coach
    assert_equal("McInally", @pollok.coach)
  end

  def test_can_amend_coach_name
    @pollok.coach = ("Guardiola")
    assert_equal("Guardiola", @pollok.coach)
  end

  def test_can_add_a_player
    
    assert_equal(["Hanlon", "Sideserf", "Gallacher", "Messi"], @pollok.add_player("Messi"))

  end

  def test_can_add_points_for_wins
    assert_equal(3, @pollok.add_points("win"))
  end

  def test_adds_point_for_draw
    assert_equal(1, @pollok.add_points("draw"))
  end

  def test_no_points_for_losing
    assert_equal(0, @pollok.add_points("lose"))
  end


end
