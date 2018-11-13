require "application_system_test_case"

class JobPostsTest < ApplicationSystemTestCase
  setup do
    @job_post = job_posts(:one)
  end

  test "visiting the index" do
    visit job_posts_url
    assert_selector "h1", text: "Job Posts"
  end

  test "creating a Job post" do
    visit job_posts_url
    click_on "New Job Post"

    fill_in "Company", with: @job_post.company_id
    fill_in "Created Date", with: @job_post.created_date
    fill_in "Is Active", with: @job_post.is_active
    fill_in "Is Company Name Hidden", with: @job_post.is_company_name_hidden
    fill_in "Job Description", with: @job_post.job_description
    fill_in "Job Location", with: @job_post.job_location_id
    fill_in "Job Type", with: @job_post.job_type_id
    fill_in "Posted By", with: @job_post.posted_by_id
    click_on "Create Job post"

    assert_text "Job post was successfully created"
    click_on "Back"
  end

  test "updating a Job post" do
    visit job_posts_url
    click_on "Edit", match: :first

    fill_in "Company", with: @job_post.company_id
    fill_in "Created Date", with: @job_post.created_date
    fill_in "Is Active", with: @job_post.is_active
    fill_in "Is Company Name Hidden", with: @job_post.is_company_name_hidden
    fill_in "Job Description", with: @job_post.job_description
    fill_in "Job Location", with: @job_post.job_location_id
    fill_in "Job Type", with: @job_post.job_type_id
    fill_in "Posted By", with: @job_post.posted_by_id
    click_on "Update Job post"

    assert_text "Job post was successfully updated"
    click_on "Back"
  end

  test "destroying a Job post" do
    visit job_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job post was successfully destroyed"
  end
end
