require 'test_helper'

class CoachTest < ActiveSupport::TestCase
  test 'should not save empty coach name' do
    coach = Coach.new

    coach.save
    refute coach.valid?
  end
#a test to check whether the coach details have been inputted correctly
#passes if they have
  test 'should save valid name' do
    mens_team = MensTeam.new
    mens_team.level='first'
    mens_team.division='premier'
    mens_team.no_of_players=6
    mens_team.save
    coach = Coach.new
    coach.coach_name='Liam'
    coach.mens_team_id = mens_team.id
    coach.save

    assert coach.valid?
  end

end
