require "application_system_test_case"

class UserAccountsTest < ApplicationSystemTestCase
  setup do
    @user_account = user_accounts(:one)
  end

  test "visiting the index" do
    visit user_accounts_url
    assert_selector "h1", text: "User Accounts"
  end

  test "creating a User account" do
    visit user_accounts_url
    click_on "New User Account"

    fill_in "Contact Number", with: @user_account.contact_number
    fill_in "Date Of Birth", with: @user_account.date_of_birth
    fill_in "Email", with: @user_account.email
    fill_in "Email Notification Active", with: @user_account.email_notification_active
    fill_in "Gender", with: @user_account.gender
    fill_in "Is Active", with: @user_account.is_active
    fill_in "Password", with: @user_account.password
    fill_in "Registration Date", with: @user_account.registration_date
    fill_in "Sms Notification Active", with: @user_account.sms_notification_active
    fill_in "User Image", with: @user_account.user_image
    fill_in "User Type", with: @user_account.user_type_id
    click_on "Create User account"

    assert_text "User account was successfully created"
    click_on "Back"
  end

  test "updating a User account" do
    visit user_accounts_url
    click_on "Edit", match: :first

    fill_in "Contact Number", with: @user_account.contact_number
    fill_in "Date Of Birth", with: @user_account.date_of_birth
    fill_in "Email", with: @user_account.email
    fill_in "Email Notification Active", with: @user_account.email_notification_active
    fill_in "Gender", with: @user_account.gender
    fill_in "Is Active", with: @user_account.is_active
    fill_in "Password", with: @user_account.password
    fill_in "Registration Date", with: @user_account.registration_date
    fill_in "Sms Notification Active", with: @user_account.sms_notification_active
    fill_in "User Image", with: @user_account.user_image
    fill_in "User Type", with: @user_account.user_type_id
    click_on "Update User account"

    assert_text "User account was successfully updated"
    click_on "Back"
  end

  test "destroying a User account" do
    visit user_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User account was successfully destroyed"
  end
end
