require "test_helper"

class HelloCatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hello_cats_index_url
    assert_response :success
  end
end
