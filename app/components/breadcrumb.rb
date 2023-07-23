class Breadcrumb < ApplicationComponent
  renders_many :crumbs, "CrumbComponent"

  class CrumbComponent < ApplicationComponent
    def initialize(href: nil, active: false)
      @href = href
      @active = active
    end

    def call
      content_tag(:li, class: "max-w-[120px] md:max-w-xs truncate") do
        if @active
          content_tag(:span, content.titlecase, class: "font-semibold")
        else
          render Link.new(href: @href, underline: false) do
            content.titlecase
          end
        end
      end
    end
  end
end
