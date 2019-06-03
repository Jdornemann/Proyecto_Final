require 'test_helper'

class FlatDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flat_details_index_url
    assert_response :success
  end

  test "should get show" do
    get flat_details_show_url
    assert_response :success
  end

  test "should get edit" do
    get flat_details_edit_url
    assert_response :success
  end

end
