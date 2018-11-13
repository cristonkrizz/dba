require "application_system_test_case"

class JobPostActivitiesTest < ApplicationSystemTestCase
  setup do
    @job_post_activity = job_post_activities(:one)
  end

  test "visiting the index" do
    visit job_post_activities_url
    assert_selector "h1", text: "Job Post Activities"
  end

  test "creating a Job post activity" do
    visit job_post_activities_url
    click_on "New Job Post Activity"

    fill_in "Apply Date", with: @job_post_activity.apply_date
    fill_in "Job Post", with: @job_post_activity.job_post_id
    fill_in "User Account", with: @job_post_activity.user_account_id
    click_on "Create Job post activity"

    assert_text "Job post activity was successfully created"
    click_on "Back"
  end

  test "updating a Job post activity" do
    visit job_post_activities_url
    click_on "Edit", match: :first

    fill_in "Apply Date", with: @job_post_activity.apply_date
    fill_in "Job Post", with: @job_post_activity.job_post_id
    fill_in "User Account", with: @job_post_activity.user_account_id
    click_on "Update Job post activity"

    assert_text "Job post activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Job post activity" do
    visit job_post_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job post activity was successfully destroyed"
  end
end
