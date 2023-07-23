class MemojiPreview < ViewComponent::Preview
  # @param size select [small, medium, large, xlarge]
  # @param border toggle
  # @param shadow toggle
  # @param rounded toggle
  def playground(size: :medium, border: false, shadow: false, rounded: false)
    render Memoji.new(size:, border:, shadow:, rounded:)
  end

  # @!group Sizes

  def small
    render(Memoji.new(size: :small))
  end

  def medium
    render(Memoji.new(size: :medium))
  end

  def large
    render(Memoji.new(size: :large))
  end

  def extra_large
    render(Memoji.new(size: :xlarge))
  end

  # @!endgroup

  # @!group Types

  # Border is enabled for clarity. Default behaviour is disabled.
  def squared
    render(Memoji.new(border: true, rounded: false))
  end

  # Border is enabled for clarity. Default behaviour is disabled.
  def rounded
    render(Memoji.new(border: true, rounded: true))
  end

  # @!endgroup
end
