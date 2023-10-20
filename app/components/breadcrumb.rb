class Breadcrumb < ApplicationComponent
  renders_many :crumbs, "CrumbComponent"

  class CrumbComponent < ApplicationComponent
    def initialize(href: nil, active: false)
      @href = href
      @active = active
    end

    def call
      content_tag(:li, class: "max-w-[120px] md:max-w-xs") do
        if @active
          content_tag(:span, formatted_content, class: "font-semibold")
        else
          render Link.new(href: @href, underline: false) do
            formatted_content
          end
        end
      end
    end

    private

    def formatted_content
      content.truncate_words(5, omission: "...")
    end
  end
end
