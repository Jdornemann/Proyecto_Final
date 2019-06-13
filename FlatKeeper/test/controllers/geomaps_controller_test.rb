require 'test_helper'

class GeomapsControllerTest < ActionDispatch::IntegrationTest
  test "should get geolocalization" do
    get geomaps_geolocalization_url
    assert_response :success
  end

  test "should get index" do
    get geomaps_index_url
    assert_response :success
  end

end
