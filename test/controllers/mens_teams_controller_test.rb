require 'test_helper'

class MensTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mens_team = mens_teams(:one)
    @player = players(:one)
    @coach = coaches(:one)
  end

  test "should get index" do
    get mens_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_mens_team_url
    assert_response :success
  end

  test "should create mens_team" do
    assert_difference('MensTeam.count') do
      post mens_teams_url, params: { mens_team: { division: @mens_team.division, level: @mens_team.level + " create", no_of_players: @mens_team.no_of_players } }
    end

    assert_redirected_to mens_team_url(MensTeam.last)
  end

  test "should show mens_team" do
    get mens_team_url(@mens_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_mens_team_url(@mens_team)
    assert_response :success
  end

  test "should update mens_team" do
    patch mens_team_url(@mens_team), params: { mens_team: { division: @mens_team.division, level: @mens_team.level, no_of_players: @mens_team.no_of_players } }
    assert_redirected_to mens_team_url(@mens_team)
  end

  test "should destroy mens_team" do
    assert_difference('MensTeam.count', -1) do
      delete mens_team_url(@mens_team)
    end

    assert_redirected_to mens_teams_url
  end
end
