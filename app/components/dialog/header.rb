class Dialog
  class Header < ApplicationComponent
    attr_reader :title, :subtitle

    def initialize(title:, subtitle: nil, show_divider: false)
      @title = title
      @subtitle = subtitle
      @show_divider = show_divider
    end
  end
end
