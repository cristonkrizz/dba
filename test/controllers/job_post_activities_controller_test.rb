require 'test_helper'

class JobPostActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_post_activity = job_post_activities(:one)
  end

  test "should get index" do
    get job_post_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_job_post_activity_url
    assert_response :success
  end

  test "should create job_post_activity" do
    assert_difference('JobPostActivity.count') do
      post job_post_activities_url, params: { job_post_activity: { apply_date: @job_post_activity.apply_date, job_post_id: @job_post_activity.job_post_id, user_account_id: @job_post_activity.user_account_id } }
    end

    assert_redirected_to job_post_activity_url(JobPostActivity.last)
  end

  test "should show job_post_activity" do
    get job_post_activity_url(@job_post_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_post_activity_url(@job_post_activity)
    assert_response :success
  end

  test "should update job_post_activity" do
    patch job_post_activity_url(@job_post_activity), params: { job_post_activity: { apply_date: @job_post_activity.apply_date, job_post_id: @job_post_activity.job_post_id, user_account_id: @job_post_activity.user_account_id } }
    assert_redirected_to job_post_activity_url(@job_post_activity)
  end

  test "should destroy job_post_activity" do
    assert_difference('JobPostActivity.count', -1) do
      delete job_post_activity_url(@job_post_activity)
    end

    assert_redirected_to job_post_activities_url
  end
end
