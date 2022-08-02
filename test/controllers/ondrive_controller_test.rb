require "test_helper"

class OndriveControllerTest < ActionDispatch::IntegrationTest
  test "should get detail" do
    get ondrive_detail_url
    assert_response :success
  end

  test "should get track" do
    get ondrive_track_url
    assert_response :success
  end

  test "should get all_detail" do
    get ondrive_all_detail_url
    assert_response :success
  end

  test "should get info" do
    get ondrive_info_url
    assert_response :success
  end
end
