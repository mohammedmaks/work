require "application_system_test_case"

class MensTeamsTest < ApplicationSystemTestCase
  setup do
    @mens_team = mens_teams(:one)
  end

  test "visiting the index" do
    visit mens_teams_url
    assert_selector "h1", text: "Mens Teams"
  end

  test "creating a Mens team" do
    visit mens_teams_url
    click_on "New Mens Team"

    fill_in "Division", with: @mens_team.division
    fill_in "Level", with: @mens_team.level
    fill_in "No of players", with: @mens_team.no_of_players
    click_on "Create Mens team"

    assert_text "Mens team was successfully created"
    click_on "Back"
  end

  test "updating a Mens team" do
    visit mens_teams_url
    click_on "Edit", match: :first

    fill_in "Division", with: @mens_team.division
    fill_in "Level", with: @mens_team.level
    fill_in "No of players", with: @mens_team.no_of_players
    click_on "Update Mens team"

    assert_text "Mens team was successfully updated"
    click_on "Back"
  end

  test "destroying a Mens team" do
    visit mens_teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mens team was successfully destroyed"
  end
end
