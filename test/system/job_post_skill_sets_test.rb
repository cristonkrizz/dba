require "application_system_test_case"

class JobPostSkillSetsTest < ApplicationSystemTestCase
  setup do
    @job_post_skill_set = job_post_skill_sets(:one)
  end

  test "visiting the index" do
    visit job_post_skill_sets_url
    assert_selector "h1", text: "Job Post Skill Sets"
  end

  test "creating a Job post skill set" do
    visit job_post_skill_sets_url
    click_on "New Job Post Skill Set"

    fill_in "Job Post", with: @job_post_skill_set.job_post_id
    fill_in "Skill Level", with: @job_post_skill_set.skill_level
    fill_in "Skill Set", with: @job_post_skill_set.skill_set_id
    click_on "Create Job post skill set"

    assert_text "Job post skill set was successfully created"
    click_on "Back"
  end

  test "updating a Job post skill set" do
    visit job_post_skill_sets_url
    click_on "Edit", match: :first

    fill_in "Job Post", with: @job_post_skill_set.job_post_id
    fill_in "Skill Level", with: @job_post_skill_set.skill_level
    fill_in "Skill Set", with: @job_post_skill_set.skill_set_id
    click_on "Update Job post skill set"

    assert_text "Job post skill set was successfully updated"
    click_on "Back"
  end

  test "destroying a Job post skill set" do
    visit job_post_skill_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job post skill set was successfully destroyed"
  end
end
