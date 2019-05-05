require "application_system_test_case"

class FlatOwnersTest < ApplicationSystemTestCase
  setup do
    @flat_owner = flat_owners(:one)
  end

  test "visiting the index" do
    visit flat_owners_url
    assert_selector "h1", text: "Flat Owners"
  end

  test "creating a Flat owner" do
    visit flat_owners_url
    click_on "New Flat Owner"

    fill_in "Buldingname", with: @flat_owner.Buldingname
    fill_in "Address", with: @flat_owner.address
    fill_in "Baths number", with: @flat_owner.baths_number
    fill_in "Beds number", with: @flat_owner.beds_number
    fill_in "Country", with: @flat_owner.country
    fill_in "Region", with: @flat_owner.region
    fill_in "Rooms number", with: @flat_owner.rooms_number
    click_on "Create Flat owner"

    assert_text "Flat owner was successfully created"
    click_on "Back"
  end

  test "updating a Flat owner" do
    visit flat_owners_url
    click_on "Edit", match: :first

    fill_in "Buldingname", with: @flat_owner.Buldingname
    fill_in "Address", with: @flat_owner.address
    fill_in "Baths number", with: @flat_owner.baths_number
    fill_in "Beds number", with: @flat_owner.beds_number
    fill_in "Country", with: @flat_owner.country
    fill_in "Region", with: @flat_owner.region
    fill_in "Rooms number", with: @flat_owner.rooms_number
    click_on "Update Flat owner"

    assert_text "Flat owner was successfully updated"
    click_on "Back"
  end

  test "destroying a Flat owner" do
    visit flat_owners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flat owner was successfully destroyed"
  end
end
