class Blog::Post::BodyPreview < ViewComponent::Preview
  def default
    render Blog::Post::Body.new do
      File.read(Rails.root.join("test", "fixtures", "files", "example.md"))
    end
  end
end
