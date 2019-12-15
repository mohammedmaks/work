require 'test_helper'

class MensTeamTest < ActiveSupport::TestCase
  #a test to check whether the mens team details have been inputted correctly
  #fails if they have not
  test 'should not save empty team' do
    mens_team=MensTeam.new

    mens_team.save
    refute mens_team.valid?
  end
#a test to check whether the mens team details have been inputted correctly
#passes if they have
  test 'should save valid team' do
    mens_team = MensTeam.new

    mens_team.level='first'
    mens_team.division='premier'
    mens_team.no_of_players=6

    mens_team.save
    assert mens_team.valid?
  end

  test 'should  not save duplicate level' do
    team = MensTeam.new

    team.level = 'first'
    team.division = 'premier'
    team.no_of_players = 6
    team.save
    assert team.valid?

    team2=MensTeam.new
    team2.level = 'first'
    team2.division ='premier'
    team2.no_of_players = 6
    team2.save
    refute team2.valid?
  end
end
