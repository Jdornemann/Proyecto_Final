require 'test_helper'

class FlatOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flat_owner = flat_owners(:one)
  end

  test "should get index" do
    get flat_owners_url
    assert_response :success
  end

  test "should get new" do
    get new_flat_owner_url
    assert_response :success
  end

  test "should create flat_owner" do
    assert_difference('FlatOwner.count') do
      post flat_owners_url, params: { flat_owner: { Buldingname: @flat_owner.Buldingname, address: @flat_owner.address, baths_number: @flat_owner.baths_number, beds_number: @flat_owner.beds_number, country: @flat_owner.country, region: @flat_owner.region, rooms_number: @flat_owner.rooms_number } }
    end

    assert_redirected_to flat_owner_url(FlatOwner.last)
  end

  test "should show flat_owner" do
    get flat_owner_url(@flat_owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_flat_owner_url(@flat_owner)
    assert_response :success
  end

  test "should update flat_owner" do
    patch flat_owner_url(@flat_owner), params: { flat_owner: { Buldingname: @flat_owner.Buldingname, address: @flat_owner.address, baths_number: @flat_owner.baths_number, beds_number: @flat_owner.beds_number, country: @flat_owner.country, region: @flat_owner.region, rooms_number: @flat_owner.rooms_number } }
    assert_redirected_to flat_owner_url(@flat_owner)
  end

  test "should destroy flat_owner" do
    assert_difference('FlatOwner.count', -1) do
      delete flat_owner_url(@flat_owner)
    end

    assert_redirected_to flat_owners_url
  end
end
