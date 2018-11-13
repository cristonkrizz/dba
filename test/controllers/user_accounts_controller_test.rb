require 'test_helper'

class UserAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_account = user_accounts(:one)
  end

  test "should get index" do
    get user_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_user_account_url
    assert_response :success
  end

  test "should create user_account" do
    assert_difference('UserAccount.count') do
      post user_accounts_url, params: { user_account: { contact_number: @user_account.contact_number, date_of_birth: @user_account.date_of_birth, email: @user_account.email, email_notification_active: @user_account.email_notification_active, gender: @user_account.gender, is_active: @user_account.is_active, password: @user_account.password, registration_date: @user_account.registration_date, sms_notification_active: @user_account.sms_notification_active, user_image: @user_account.user_image, user_type_id: @user_account.user_type_id } }
    end

    assert_redirected_to user_account_url(UserAccount.last)
  end

  test "should show user_account" do
    get user_account_url(@user_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_account_url(@user_account)
    assert_response :success
  end

  test "should update user_account" do
    patch user_account_url(@user_account), params: { user_account: { contact_number: @user_account.contact_number, date_of_birth: @user_account.date_of_birth, email: @user_account.email, email_notification_active: @user_account.email_notification_active, gender: @user_account.gender, is_active: @user_account.is_active, password: @user_account.password, registration_date: @user_account.registration_date, sms_notification_active: @user_account.sms_notification_active, user_image: @user_account.user_image, user_type_id: @user_account.user_type_id } }
    assert_redirected_to user_account_url(@user_account)
  end

  test "should destroy user_account" do
    assert_difference('UserAccount.count', -1) do
      delete user_account_url(@user_account)
    end

    assert_redirected_to user_accounts_url
  end
end
