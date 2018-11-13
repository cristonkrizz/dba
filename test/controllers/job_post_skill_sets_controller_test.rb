require 'test_helper'

class JobPostSkillSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_post_skill_set = job_post_skill_sets(:one)
  end

  test "should get index" do
    get job_post_skill_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_job_post_skill_set_url
    assert_response :success
  end

  test "should create job_post_skill_set" do
    assert_difference('JobPostSkillSet.count') do
      post job_post_skill_sets_url, params: { job_post_skill_set: { job_post_id: @job_post_skill_set.job_post_id, skill_level: @job_post_skill_set.skill_level, skill_set_id: @job_post_skill_set.skill_set_id } }
    end

    assert_redirected_to job_post_skill_set_url(JobPostSkillSet.last)
  end

  test "should show job_post_skill_set" do
    get job_post_skill_set_url(@job_post_skill_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_post_skill_set_url(@job_post_skill_set)
    assert_response :success
  end

  test "should update job_post_skill_set" do
    patch job_post_skill_set_url(@job_post_skill_set), params: { job_post_skill_set: { job_post_id: @job_post_skill_set.job_post_id, skill_level: @job_post_skill_set.skill_level, skill_set_id: @job_post_skill_set.skill_set_id } }
    assert_redirected_to job_post_skill_set_url(@job_post_skill_set)
  end

  test "should destroy job_post_skill_set" do
    assert_difference('JobPostSkillSet.count', -1) do
      delete job_post_skill_set_url(@job_post_skill_set)
    end

    assert_redirected_to job_post_skill_sets_url
  end
end
