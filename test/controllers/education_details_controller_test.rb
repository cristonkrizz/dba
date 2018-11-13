require 'test_helper'

class EducationDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_detail = education_details(:one)
  end

  test "should get index" do
    get education_details_url
    assert_response :success
  end

  test "should get new" do
    get new_education_detail_url
    assert_response :success
  end

  test "should create education_detail" do
    assert_difference('EducationDetail.count') do
      post education_details_url, params: { education_detail: { Institute_university_name: @education_detail.Institute_university_name, certificate_degree_name: @education_detail.certificate_degree_name, cgpa: @education_detail.cgpa, completion_date: @education_detail.completion_date, major: @education_detail.major, percentage: @education_detail.percentage, starting_date: @education_detail.starting_date, user_account_id: @education_detail.user_account_id } }
    end

    assert_redirected_to education_detail_url(EducationDetail.last)
  end

  test "should show education_detail" do
    get education_detail_url(@education_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_detail_url(@education_detail)
    assert_response :success
  end

  test "should update education_detail" do
    patch education_detail_url(@education_detail), params: { education_detail: { Institute_university_name: @education_detail.Institute_university_name, certificate_degree_name: @education_detail.certificate_degree_name, cgpa: @education_detail.cgpa, completion_date: @education_detail.completion_date, major: @education_detail.major, percentage: @education_detail.percentage, starting_date: @education_detail.starting_date, user_account_id: @education_detail.user_account_id } }
    assert_redirected_to education_detail_url(@education_detail)
  end

  test "should destroy education_detail" do
    assert_difference('EducationDetail.count', -1) do
      delete education_detail_url(@education_detail)
    end

    assert_redirected_to education_details_url
  end
end
