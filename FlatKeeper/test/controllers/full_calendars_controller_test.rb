require 'test_helper'

class FullCalendarsControllerTest < ActionDispatch::IntegrationTest
  test "should get calendario" do
    get full_calendars_calendario_url
    assert_response :success
  end

  test "should get full_calendar" do
    get full_calendars_full_calendar_url
    assert_response :success
  end

end
