class IconPreview < ViewComponent::Preview
  # @param icon select [arrow_uturn, bars, check, chevron_right, clipboard, eye_slash, eye, moon, newspaper, notepad, sun, trash]
  # @param size select [small, medium, large]
  def playground(icon: :arrow_uturn, size: :medium)
    render(Icon.new(icon:, size:))
  end

  # @param icon select [arrow_uturn, bars, check, chevron_right, clipboard, eye_slash, eye, moon, newspaper, notepad, sun, trash]
  def default(icon: :arrow_uturn)
    render Icon.new(icon:)
  end

  # @!group Sizes

  def small
    render Icon.new(icon: :check, size: :small)
  end

  def medium
    render Icon.new(icon: :check, size: :medium)
  end

  def large
    render Icon.new(icon: :check, size: :large)
  end

  # @!endgroup
end
