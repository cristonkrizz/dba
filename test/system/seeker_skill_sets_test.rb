require "application_system_test_case"

class SeekerSkillSetsTest < ApplicationSystemTestCase
  setup do
    @seeker_skill_set = seeker_skill_sets(:one)
  end

  test "visiting the index" do
    visit seeker_skill_sets_url
    assert_selector "h1", text: "Seeker Skill Sets"
  end

  test "creating a Seeker skill set" do
    visit seeker_skill_sets_url
    click_on "New Seeker Skill Set"

    fill_in "Skill Level", with: @seeker_skill_set.skill_level
    fill_in "Skill Set", with: @seeker_skill_set.skill_set_id
    fill_in "User Account", with: @seeker_skill_set.user_account_id
    click_on "Create Seeker skill set"

    assert_text "Seeker skill set was successfully created"
    click_on "Back"
  end

  test "updating a Seeker skill set" do
    visit seeker_skill_sets_url
    click_on "Edit", match: :first

    fill_in "Skill Level", with: @seeker_skill_set.skill_level
    fill_in "Skill Set", with: @seeker_skill_set.skill_set_id
    fill_in "User Account", with: @seeker_skill_set.user_account_id
    click_on "Update Seeker skill set"

    assert_text "Seeker skill set was successfully updated"
    click_on "Back"
  end

  test "destroying a Seeker skill set" do
    visit seeker_skill_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seeker skill set was successfully destroyed"
  end
end
