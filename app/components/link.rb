class Link < ApplicationComponent
  attr_reader :href, :options

  SCHEMES = {
    default: "",
    primary: "text-blue-600 hover:text-blue-500",
    secondary: "text-gray-600 hover:text-gray-500"
  }

  def initialize(href:, scheme: :default, underline: true, **options)
    @href = href
    @scheme = scheme
    @underline = underline
    @options = options
  end

  def classes
    classes = SCHEMES[@scheme]
    classes += "hover:underline hover:underline-offset-4 hover:decoration-dotted" if @underline
    classes
  end
end
