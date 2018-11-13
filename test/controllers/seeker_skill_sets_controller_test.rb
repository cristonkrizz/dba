require 'test_helper'

class SeekerSkillSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seeker_skill_set = seeker_skill_sets(:one)
  end

  test "should get index" do
    get seeker_skill_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_seeker_skill_set_url
    assert_response :success
  end

  test "should create seeker_skill_set" do
    assert_difference('SeekerSkillSet.count') do
      post seeker_skill_sets_url, params: { seeker_skill_set: { skill_level: @seeker_skill_set.skill_level, skill_set_id: @seeker_skill_set.skill_set_id, user_account_id: @seeker_skill_set.user_account_id } }
    end

    assert_redirected_to seeker_skill_set_url(SeekerSkillSet.last)
  end

  test "should show seeker_skill_set" do
    get seeker_skill_set_url(@seeker_skill_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_seeker_skill_set_url(@seeker_skill_set)
    assert_response :success
  end

  test "should update seeker_skill_set" do
    patch seeker_skill_set_url(@seeker_skill_set), params: { seeker_skill_set: { skill_level: @seeker_skill_set.skill_level, skill_set_id: @seeker_skill_set.skill_set_id, user_account_id: @seeker_skill_set.user_account_id } }
    assert_redirected_to seeker_skill_set_url(@seeker_skill_set)
  end

  test "should destroy seeker_skill_set" do
    assert_difference('SeekerSkillSet.count', -1) do
      delete seeker_skill_set_url(@seeker_skill_set)
    end

    assert_redirected_to seeker_skill_sets_url
  end
end
