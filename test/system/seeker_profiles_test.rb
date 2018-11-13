require "application_system_test_case"

class SeekerProfilesTest < ApplicationSystemTestCase
  setup do
    @seeker_profile = seeker_profiles(:one)
  end

  test "visiting the index" do
    visit seeker_profiles_url
    assert_selector "h1", text: "Seeker Profiles"
  end

  test "creating a Seeker profile" do
    visit seeker_profiles_url
    click_on "New Seeker Profile"

    fill_in "Currency", with: @seeker_profile.currency
    fill_in "Current Salary", with: @seeker_profile.current_salary
    fill_in "First Name", with: @seeker_profile.first_name
    fill_in "Is Annually Monthly", with: @seeker_profile.is_annually_monthly
    fill_in "Last Name", with: @seeker_profile.last_name
    click_on "Create Seeker profile"

    assert_text "Seeker profile was successfully created"
    click_on "Back"
  end

  test "updating a Seeker profile" do
    visit seeker_profiles_url
    click_on "Edit", match: :first

    fill_in "Currency", with: @seeker_profile.currency
    fill_in "Current Salary", with: @seeker_profile.current_salary
    fill_in "First Name", with: @seeker_profile.first_name
    fill_in "Is Annually Monthly", with: @seeker_profile.is_annually_monthly
    fill_in "Last Name", with: @seeker_profile.last_name
    click_on "Update Seeker profile"

    assert_text "Seeker profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Seeker profile" do
    visit seeker_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seeker profile was successfully destroyed"
  end
end
