class MarkdownPreview < ViewComponent::Preview
  # All styling is accomplished through TailwindCSS under the body that renders the Markdown component.
  # See: [Blog::Post::Body](/lookbook/inspect/blog/post/body/default)
  def default
    render Markdown.new do
      File.read(Rails.root.join("test", "fixtures", "files", "example.md")).html_safe
    end
  end
end
