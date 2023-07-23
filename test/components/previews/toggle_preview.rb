class TogglePreview < ViewComponent::Preview
  # @param label text
  def playground(label: "Toggle me")
    render Toggle.new(label:)
  end
end
