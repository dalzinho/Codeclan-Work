class Team

  attr_accessor :name, :players, :coach
  
  def initialize(team_name, players, coach)

    @name = team_name
    @players = players
    @coach = coach
    @points = 0

  end

  def add_player(player_name)
    @players.push(player_name)
  end

  def add_points(result)
    if result == "win"
      @points += 3
    elsif result == "draw"
      @points += 1
    end

    return @points
  end

  def find_player(search_term)
    for player in @players
     return player == search_term
    end
  end

end