class Logo < ApplicationComponent
  LOGOS = {
    github: "logos/github.svg",
    linkedin: "logos/linkedin.svg",
    mastodon: "logos/mastodon.svg",
    rails: "logos/rails.svg",
    shopify: "logos/shopify.svg",
    showpass: "logos/showpass.svg",
    tailwindcss: "logos/tailwindcss.svg",
    twitter: "logos/twitter.svg",
    viewcomponent: "logos/viewcomponent.svg",
    weedmaps: "logos/weedmaps.svg"
  }
  LOGO_KEYS = LOGOS.keys

  SIZES = {
    xsmall: "h-4 w-4",
    small: "h-8 w-8",
    medium: "h-12 w-12",
    large: "h-16 w-16",
    xlarge: "h-24 w-24"
  }
  SIZE_KEYS = SIZES.keys

  def initialize(logo:, size: :medium)
    @logo = logo
    @size = size
  end

  def call
    inline_svg_tag LOGOS[@logo], class: SIZES[@size]
  end
end
