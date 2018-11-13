require "application_system_test_case"

class BusinessStreamsTest < ApplicationSystemTestCase
  setup do
    @business_stream = business_streams(:one)
  end

  test "visiting the index" do
    visit business_streams_url
    assert_selector "h1", text: "Business Streams"
  end

  test "creating a Business stream" do
    visit business_streams_url
    click_on "New Business Stream"

    fill_in "Business Stream Name", with: @business_stream.business_stream_name
    click_on "Create Business stream"

    assert_text "Business stream was successfully created"
    click_on "Back"
  end

  test "updating a Business stream" do
    visit business_streams_url
    click_on "Edit", match: :first

    fill_in "Business Stream Name", with: @business_stream.business_stream_name
    click_on "Update Business stream"

    assert_text "Business stream was successfully updated"
    click_on "Back"
  end

  test "destroying a Business stream" do
    visit business_streams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Business stream was successfully destroyed"
  end
end
