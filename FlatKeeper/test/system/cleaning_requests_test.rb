require "application_system_test_case"

class CleaningRequestsTest < ApplicationSystemTestCase
  setup do
    @cleaning_request = cleaning_requests(:one)
  end

  test "visiting the index" do
    visit cleaning_requests_url
    assert_selector "h1", text: "Cleaning Requests"
  end

  test "creating a Cleaning request" do
    visit cleaning_requests_url
    click_on "New Cleaning Request"

    fill_in "Status publishing", with: @cleaning_request.status_publishing
    click_on "Create Cleaning request"

    assert_text "Cleaning request was successfully created"
    click_on "Back"
  end

  test "updating a Cleaning request" do
    visit cleaning_requests_url
    click_on "Edit", match: :first

    fill_in "Status publishing", with: @cleaning_request.status_publishing
    click_on "Update Cleaning request"

    assert_text "Cleaning request was successfully updated"
    click_on "Back"
  end

  test "destroying a Cleaning request" do
    visit cleaning_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cleaning request was successfully destroyed"
  end
end
