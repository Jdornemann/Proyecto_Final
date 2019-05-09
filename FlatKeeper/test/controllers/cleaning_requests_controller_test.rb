require 'test_helper'

class CleaningRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cleaning_request = cleaning_requests(:one)
  end

  test "should get index" do
    get cleaning_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_cleaning_request_url
    assert_response :success
  end

  test "should create cleaning_request" do
    assert_difference('CleaningRequest.count') do
      post cleaning_requests_url, params: { cleaning_request: { status_publishing: @cleaning_request.status_publishing } }
    end

    assert_redirected_to cleaning_request_url(CleaningRequest.last)
  end

  test "should show cleaning_request" do
    get cleaning_request_url(@cleaning_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_cleaning_request_url(@cleaning_request)
    assert_response :success
  end

  test "should update cleaning_request" do
    patch cleaning_request_url(@cleaning_request), params: { cleaning_request: { status_publishing: @cleaning_request.status_publishing } }
    assert_redirected_to cleaning_request_url(@cleaning_request)
  end

  test "should destroy cleaning_request" do
    assert_difference('CleaningRequest.count', -1) do
      delete cleaning_request_url(@cleaning_request)
    end

    assert_redirected_to cleaning_requests_url
  end
end
