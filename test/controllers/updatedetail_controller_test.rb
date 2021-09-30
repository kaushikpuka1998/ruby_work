require "test_helper"

class UpdatedetailControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get updatedetail_update_url
    assert_response :success
  end
end
