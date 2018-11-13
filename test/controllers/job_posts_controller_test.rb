require 'test_helper'

class JobPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_post = job_posts(:one)
  end

  test "should get index" do
    get job_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_job_post_url
    assert_response :success
  end

  test "should create job_post" do
    assert_difference('JobPost.count') do
      post job_posts_url, params: { job_post: { company_id: @job_post.company_id, created_date: @job_post.created_date, is_active: @job_post.is_active, is_company_name_hidden: @job_post.is_company_name_hidden, job_description: @job_post.job_description, job_location_id: @job_post.job_location_id, job_type_id: @job_post.job_type_id, posted_by_id: @job_post.posted_by_id } }
    end

    assert_redirected_to job_post_url(JobPost.last)
  end

  test "should show job_post" do
    get job_post_url(@job_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_post_url(@job_post)
    assert_response :success
  end

  test "should update job_post" do
    patch job_post_url(@job_post), params: { job_post: { company_id: @job_post.company_id, created_date: @job_post.created_date, is_active: @job_post.is_active, is_company_name_hidden: @job_post.is_company_name_hidden, job_description: @job_post.job_description, job_location_id: @job_post.job_location_id, job_type_id: @job_post.job_type_id, posted_by_id: @job_post.posted_by_id } }
    assert_redirected_to job_post_url(@job_post)
  end

  test "should destroy job_post" do
    assert_difference('JobPost.count', -1) do
      delete job_post_url(@job_post)
    end

    assert_redirected_to job_posts_url
  end
end
