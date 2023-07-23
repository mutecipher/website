class CardPreview < ViewComponent::Preview
  # @param title text
  # @param subtitle text
  # @param body textarea
  def playground(title: "Hello, world!", subtitle: "This is a card", body: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consequatur reiciendis iusto aperiam autem esse? Dolor ipsam omnis nihil iure ducimus ex recusandae. Neque quod, est ut porro sunt dolor delectus!")
    render Card.new do |component|
      component.with_title do
        title
      end

      component.with_subtitle do
        subtitle
      end

      component.with_body do
        content_tag :p do
          body
        end
      end
    end
  end
end
