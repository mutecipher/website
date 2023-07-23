class BreadcrumbPreview < ViewComponent::Preview
  # @param text text
  # @param size range { min: 1, max: 5, step: 1 }
  def playground(text: "Page", size: 3)
    render Breadcrumb.new do |component|
      size.to_i.times do |i|
        component.with_crumb(href: "#", active: size.to_i == i + 1) do
          "#{text} #{i + 1}"
        end
      end
    end
  end
end
