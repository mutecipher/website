class Blog::Post::PostedAtPreview < ViewComponent::Preview
  # @param posted_at date
  def default(posted_at: Time.zone.now)
    render(Blog::Post::PostedAt.new(date: posted_at))
  end
end
