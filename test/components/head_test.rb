require "test_helper"

class HeadTest < ViewComponent::TestCase
  setup do
    @render = render_inline(Head.new)
  end

  test "renders a single title prop" do
    assert_selector "title", count: 1, visible: false
  end

  test "renders a single meta[name=title] prop" do
    assert_selector "meta[name='title']", count: 1, visible: false
  end

  test "renders a single meta[name=description] prop" do
    assert_selector "meta[name='description']", count: 1, visible: false
  end

  test "renders a single meta[property=og:type] prop" do
    assert_selector "meta[property='og:type']", count: 1, visible: false
  end

  test "renders a single meta[property=og:url] prop" do
    assert_selector "meta[property='og:url']", count: 1, visible: false
  end

  test "renders a single meta[property=og:title] prop" do
    assert_selector "meta[property='og:title']", count: 1, visible: false
  end

  test "renders a single meta[property=og:description] prop" do
    assert_selector "meta[property='og:description']", count: 1, visible: false
  end

  test "renders a single meta[property=og:image] prop" do
    assert_selector "meta[property='og:image']", count: 1, visible: false
  end

  test "renders a single meta[property=twitter:card] prop" do
    assert_selector "meta[property='twitter:card']", count: 1, visible: false
  end

  test "renders a single meta[property=twitter:url] prop" do
    assert_selector "meta[property='twitter:url']", count: 1, visible: false
  end

  test "renders a single meta[property=twitter:title] prop" do
    assert_selector "meta[property='twitter:title']", count: 1, visible: false
  end

  test "renders a single meta[property=twitter:description] prop" do
    assert_selector "meta[property='twitter:description']", count: 1, visible: false
  end

  test "renders a single meta[property=twitter:image] prop" do
    assert_selector "meta[property='twitter:image']", count: 1, visible: false
  end
end
