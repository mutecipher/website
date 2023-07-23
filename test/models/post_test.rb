require "test_helper"

class PostTest < ActiveSupport::TestCase
  setup do
    @path = Rails.root.join("test", "fixtures", "files", "example.md.erb")
    @post = Post.new(@path)
  end

  test ".all" do
    assert Post.respond_to?(:all)
  end

  test "#slug" do
    assert_equal "example", @post.slug
  end

  test "#title" do
    assert_equal "Example", @post.title
  end

  test "#description" do
    assert_equal "This is an example post.", @post.description
  end

  test "#tags" do
    assert_equal ["example", "post"], @post.tags
  end

  test "#body" do
    assert_equal <<~MARKDOWN, @post.body
      # Markdown
      
      Hello, world!
    MARKDOWN
  end

  test "#published?" do
    assert_equal true, @post.published?
  end

  test "#created_at" do
    assert_equal Time.parse("2023-07-03 02:30:49 UTC"), @post.created_at
  end
end
