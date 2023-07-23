class LogoPreview < ViewComponent::Preview
  # @param logo select :logos
  # @param size select :sizes
  def playground(logo: :shopify, size: :medium)
    render Logo.new(logo:, size:)
  end

  # @!group Sizes

  def xsmall
    render Logo.new(logo: :shopify, size: :xsmall)
  end

  def small
    render Logo.new(logo: :shopify, size: :small)
  end

  def medium
    render Logo.new(logo: :shopify, size: :medium)
  end

  def large
    render Logo.new(logo: :shopify, size: :large)
  end

  def xlarge
    render Logo.new(logo: :shopify, size: :xlarge)
  end

  # @!endgroup

  private

  def logos
    Logo::LOGO_KEYS
  end

  def sizes
    Logo::SIZES.keys
  end
end
