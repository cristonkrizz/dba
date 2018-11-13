require "application_system_test_case"

class ExperienceDetailsTest < ApplicationSystemTestCase
  setup do
    @experience_detail = experience_details(:one)
  end

  test "visiting the index" do
    visit experience_details_url
    assert_selector "h1", text: "Experience Details"
  end

  test "creating a Experience detail" do
    visit experience_details_url
    click_on "New Experience Detail"

    fill_in "Company Name", with: @experience_detail.company_name
    fill_in "Description", with: @experience_detail.description
    fill_in "End Date", with: @experience_detail.end_date
    fill_in "Is Current Job", with: @experience_detail.is_current_job
    fill_in "Job Location City", with: @experience_detail.job_location_city
    fill_in "Job Location Country", with: @experience_detail.job_location_country
    fill_in "Job Location State", with: @experience_detail.job_location_state
    fill_in "Job Title", with: @experience_detail.job_title
    fill_in "Start Date", with: @experience_detail.start_date
    fill_in "User Account", with: @experience_detail.user_account_id
    click_on "Create Experience detail"

    assert_text "Experience detail was successfully created"
    click_on "Back"
  end

  test "updating a Experience detail" do
    visit experience_details_url
    click_on "Edit", match: :first

    fill_in "Company Name", with: @experience_detail.company_name
    fill_in "Description", with: @experience_detail.description
    fill_in "End Date", with: @experience_detail.end_date
    fill_in "Is Current Job", with: @experience_detail.is_current_job
    fill_in "Job Location City", with: @experience_detail.job_location_city
    fill_in "Job Location Country", with: @experience_detail.job_location_country
    fill_in "Job Location State", with: @experience_detail.job_location_state
    fill_in "Job Title", with: @experience_detail.job_title
    fill_in "Start Date", with: @experience_detail.start_date
    fill_in "User Account", with: @experience_detail.user_account_id
    click_on "Update Experience detail"

    assert_text "Experience detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Experience detail" do
    visit experience_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Experience detail was successfully destroyed"
  end
end
