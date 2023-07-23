class Blog::Post::TitlePreview < ViewComponent::Preview
  def default
    render Blog::Post::Title.new do
      "Sample Blog Post Title"
    end
  end
end
