require "test_helper"

class HeaderTest < ViewComponent::TestCase
  test "without links" do
    render_inline Header.new
    assert_text "mutecipher"
  end
end
