require "test_helper"

class Post
  class PostedAtTest < ViewComponent::TestCase
    test "correctly renders component" do
      render_inline Blog::Post::PostedAt.new(date: "2023-07-24 23:37:08 UTC")
      assert_text "July 24, 2023\n"
    end
  end
end
