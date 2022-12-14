require "test_helper"

class Artist::LiveSchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artist_live_schedules_index_url
    assert_response :success
  end

  test "should get new" do
    get artist_live_schedules_new_url
    assert_response :success
  end

  test "should get edit" do
    get artist_live_schedules_edit_url
    assert_response :success
  end
end
