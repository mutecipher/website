class Blog::Post::TagPreview < ViewComponent::Preview
  def default
    render(Blog::Post::Tag.new(tag: "Ruby"))
  end
end
