require "test_helper"

class TracksControllerTest < ActionDispatch::IntegrationTest
  test "should get focus" do
    get tracks_focus_url
    assert_response :success
  end

  test "should get relax" do
    get tracks_relax_url
    assert_response :success
  end

  test "should get sleep" do
    get tracks_sleep_url
    assert_response :success
  end
end
