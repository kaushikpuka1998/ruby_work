require "test_helper"

class ApicallControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apicall_index_url
    assert_response :success
  end
end
