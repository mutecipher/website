class DialogPreview < ViewComponent::Preview
  # @param title text
  # @param subtitle text
  # @param body text
  # @param footer text
  # @param size select [small, medium, large, full]
  # @param show_divider toggle
  def playground(title: "Title", subtitle: "Subtitle", body: "Body", footer: "Footer", size: :medium, show_divider: false)
    render Dialog.new(size:) do |d|
      d.with_header(show_divider:) { title }
      d.with_body { body }
      d.with_footer(show_divider:) { footer }
    end
  end

  def default
    render Dialog.new do |d|
      d.with_header { "Title" }
      d.with_body { "Body" }
      d.with_footer { "Footer" }
    end
  end
end
