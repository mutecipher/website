class Dialog < ApplicationComponent
  renders_one :header, lambda { |show_divider: true| Dialog::Header.new(title: @title, subtitle: @subtitle, show_divider:) }

  renders_one :body, Dialog::Body
  renders_one :footer, Dialog::Footer

  DEFAULT_SIZE = :medium
  SIZE_MAPPINGS = {
    small: "sm:max-w-sm",
    medium: "sm:max-w-md",
    large: "sm:max-w-lg",
    full: "sm:max-w-full"
  }
  SIZE_KEYS = SIZE_MAPPINGS.keys

  def initialize(title:, subtitle: nil, size: DEFAULT_SIZE)
    @title = title
    @subtitle = subtitle
    @size = size
  end

  def size_class
    SIZE_MAPPINGS[@size]
  end

  private

  def before_render
    with_header unless header?
    with_body unless body?
  end
end
