require ('minitest/autorun')
require ('minitest/rg')
require_relative('./week2_day1_labhwB')

# Part B

class TestSportsTeam < MiniTest::Test

  def setup
    @sportsteam = SportsTeam.new("England front row", ["Joe Marler", "Dylan Hartley", "Dan Cole"], "Eddie Jones")
  end

  def test_team_name
    assert_equal("England front row", @sportsteam.team_name)
  end

  def test_players
    assert_equal(["Joe Marler", "Dylan Hartley", "Dan Cole"], @sportsteam.players)
  end

  def test_coach
    assert_equal("Eddie Jones", @sportsteam.coach)
  end

  # def test_set_coach
  #   assert_equal("Gatland", @sportsteam.set_coach)
  # end

  def test_set_coach
    @sportsteam.coach = "Gatland"
    assert_equal("Gatland", @sportsteam.coach)
  end

  def test_add_player
    assert_equal(["Joe Marler", "Dylan Hartley", "Dan Cole", "Jamie George"], @sportsteam.add_player("Jamie George"))
  end

  def test_player_in_array?
    assert_equal(true, @sportsteam.player_in_array?("Dan Cole"))
  end

  def test_points
    assert_equal(0, @sportsteam.points("start"))
  end

  def test_points__won
    assert_equal(4, @sportsteam.points("W"))
  end

end