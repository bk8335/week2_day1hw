# Part B

class SportsTeam

  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  # def team_name
  #   return @team_name
  # end

  # def players
  #   return @players
  # end

  # def coach
  #   return @coach
  # end

  # def set_coach
  #   @coach = "Gatland"
  # end

  def add_player(new_player)
    players.push(new_player)
  end

  def player_in_array?(player)
    for each_player in @players
      if each_player == player
        return true
      end
    end
    return false
  end

  def points(result)
    points = 0
    points += 4 if result == "W"
    return points
  end

end