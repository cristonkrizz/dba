require "application_system_test_case"

class SkillSetsTest < ApplicationSystemTestCase
  setup do
    @skill_set = skill_sets(:one)
  end

  test "visiting the index" do
    visit skill_sets_url
    assert_selector "h1", text: "Skill Sets"
  end

  test "creating a Skill set" do
    visit skill_sets_url
    click_on "New Skill Set"

    fill_in "Skill Set Name", with: @skill_set.skill_set_name
    click_on "Create Skill set"

    assert_text "Skill set was successfully created"
    click_on "Back"
  end

  test "updating a Skill set" do
    visit skill_sets_url
    click_on "Edit", match: :first

    fill_in "Skill Set Name", with: @skill_set.skill_set_name
    click_on "Update Skill set"

    assert_text "Skill set was successfully updated"
    click_on "Back"
  end

  test "destroying a Skill set" do
    visit skill_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Skill set was successfully destroyed"
  end
end
