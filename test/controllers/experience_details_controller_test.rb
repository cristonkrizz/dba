require 'test_helper'

class ExperienceDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experience_detail = experience_details(:one)
  end

  test "should get index" do
    get experience_details_url
    assert_response :success
  end

  test "should get new" do
    get new_experience_detail_url
    assert_response :success
  end

  test "should create experience_detail" do
    assert_difference('ExperienceDetail.count') do
      post experience_details_url, params: { experience_detail: { company_name: @experience_detail.company_name, description: @experience_detail.description, end_date: @experience_detail.end_date, is_current_job: @experience_detail.is_current_job, job_location_city: @experience_detail.job_location_city, job_location_country: @experience_detail.job_location_country, job_location_state: @experience_detail.job_location_state, job_title: @experience_detail.job_title, start_date: @experience_detail.start_date, user_account_id: @experience_detail.user_account_id } }
    end

    assert_redirected_to experience_detail_url(ExperienceDetail.last)
  end

  test "should show experience_detail" do
    get experience_detail_url(@experience_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_experience_detail_url(@experience_detail)
    assert_response :success
  end

  test "should update experience_detail" do
    patch experience_detail_url(@experience_detail), params: { experience_detail: { company_name: @experience_detail.company_name, description: @experience_detail.description, end_date: @experience_detail.end_date, is_current_job: @experience_detail.is_current_job, job_location_city: @experience_detail.job_location_city, job_location_country: @experience_detail.job_location_country, job_location_state: @experience_detail.job_location_state, job_title: @experience_detail.job_title, start_date: @experience_detail.start_date, user_account_id: @experience_detail.user_account_id } }
    assert_redirected_to experience_detail_url(@experience_detail)
  end

  test "should destroy experience_detail" do
    assert_difference('ExperienceDetail.count', -1) do
      delete experience_detail_url(@experience_detail)
    end

    assert_redirected_to experience_details_url
  end
end
