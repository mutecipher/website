require "test_helper"

class FooterTest < ViewComponent::TestCase
  setup do
    @component = Footer.new
    @render = render_inline(@component)
  end

  test "renders the component once" do
    assert_selector "footer", visible: true, count: 1
  end

  test "renders the correct text" do
    assert_link "mutecipher"
  end
end
