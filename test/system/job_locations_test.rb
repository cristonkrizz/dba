require "application_system_test_case"

class JobLocationsTest < ApplicationSystemTestCase
  setup do
    @job_location = job_locations(:one)
  end

  test "visiting the index" do
    visit job_locations_url
    assert_selector "h1", text: "Job Locations"
  end

  test "creating a Job location" do
    visit job_locations_url
    click_on "New Job Location"

    fill_in "City", with: @job_location.city
    fill_in "Country", with: @job_location.country
    fill_in "State", with: @job_location.state
    fill_in "Street Address", with: @job_location.street_address
    fill_in "Zip", with: @job_location.zip
    click_on "Create Job location"

    assert_text "Job location was successfully created"
    click_on "Back"
  end

  test "updating a Job location" do
    visit job_locations_url
    click_on "Edit", match: :first

    fill_in "City", with: @job_location.city
    fill_in "Country", with: @job_location.country
    fill_in "State", with: @job_location.state
    fill_in "Street Address", with: @job_location.street_address
    fill_in "Zip", with: @job_location.zip
    click_on "Update Job location"

    assert_text "Job location was successfully updated"
    click_on "Back"
  end

  test "destroying a Job location" do
    visit job_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job location was successfully destroyed"
  end
end
