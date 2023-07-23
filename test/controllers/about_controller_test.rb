require "test_helper"

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
  end

  test "properties" do
    get root_url
    assert_select "main" do
      assert_select "section", 2 do
        assert_select "h1", "About Me", 1
        assert_select "h1", "Work History", 1
      end
    end
  end
end
