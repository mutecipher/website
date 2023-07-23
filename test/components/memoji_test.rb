require "test_helper"

class MemojiTest < ViewComponent::TestCase
  test "renders a memoji" do
    render_inline Memoji.new
    assert_selector "img"
  end
end
