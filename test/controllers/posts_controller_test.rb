require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "#index" do
    get posts_url
    assert_response :success
  end
end
