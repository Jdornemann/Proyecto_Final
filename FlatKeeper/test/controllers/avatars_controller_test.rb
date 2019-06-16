require 'test_helper'

class AvatarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get avatars_index_url
    assert_response :success
  end

end
