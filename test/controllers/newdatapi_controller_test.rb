require "test_helper"

class NewdatapiControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get newdatapi_create_url
    assert_response :success
  end
end
