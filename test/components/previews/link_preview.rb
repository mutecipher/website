# frozen_string_literal: true

class LinkPreview < ViewComponent::Preview
  def default
    render Link.new(href: "#") do
      "Example.com"
    end
  end
end
