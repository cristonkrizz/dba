require "application_system_test_case"

class EducationDetailsTest < ApplicationSystemTestCase
  setup do
    @education_detail = education_details(:one)
  end

  test "visiting the index" do
    visit education_details_url
    assert_selector "h1", text: "Education Details"
  end

  test "creating a Education detail" do
    visit education_details_url
    click_on "New Education Detail"

    fill_in "Institute University Name", with: @education_detail.Institute_university_name
    fill_in "Certificate Degree Name", with: @education_detail.certificate_degree_name
    fill_in "Cgpa", with: @education_detail.cgpa
    fill_in "Completion Date", with: @education_detail.completion_date
    fill_in "Major", with: @education_detail.major
    fill_in "Percentage", with: @education_detail.percentage
    fill_in "Starting Date", with: @education_detail.starting_date
    fill_in "User Account", with: @education_detail.user_account_id
    click_on "Create Education detail"

    assert_text "Education detail was successfully created"
    click_on "Back"
  end

  test "updating a Education detail" do
    visit education_details_url
    click_on "Edit", match: :first

    fill_in "Institute University Name", with: @education_detail.Institute_university_name
    fill_in "Certificate Degree Name", with: @education_detail.certificate_degree_name
    fill_in "Cgpa", with: @education_detail.cgpa
    fill_in "Completion Date", with: @education_detail.completion_date
    fill_in "Major", with: @education_detail.major
    fill_in "Percentage", with: @education_detail.percentage
    fill_in "Starting Date", with: @education_detail.starting_date
    fill_in "User Account", with: @education_detail.user_account_id
    click_on "Update Education detail"

    assert_text "Education detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Education detail" do
    visit education_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education detail was successfully destroyed"
  end
end
