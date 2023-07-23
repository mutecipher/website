class ButtonPreview < ViewComponent::Preview
  # @param text text
  # @param type select [primary, secondary, danger, success, warning, info, light, dark]
  # @param size select [small, medium, large]
  def playground(text: "Click me!", type: :primary, size: :medium)
    render Button.new(type:, size:) do
      text
    end
  end

  # @!group Sizes

  def small
    render Button.new(size: :small) do
      "Click me!"
    end
  end

  def medium
    render Button.new(size: :medium) do
      "Click me!"
    end
  end

  def large
    render Button.new(size: :large) do
      "Click me!"
    end
  end

  # @!endgroup

  # @!group Types

  def primary
    render Button.new(type: :primary) do
      "Click me!"
    end
  end

  def secondary
    render Button.new(type: :secondary) do
      "Click me!"
    end
  end

  def danger
    render Button.new(type: :danger) do
      "Click me!"
    end
  end

  def success
    render Button.new(type: :success) do
      "Click me!"
    end
  end

  def warning
    render Button.new(type: :warning) do
      "Click me!"
    end
  end

  def info
    render Button.new(type: :info) do
      "Click me!"
    end
  end

  def light
    render Button.new(type: :light) do
      "Click me!"
    end
  end

  def dark
    render Button.new(type: :dark) do
      "Click me!"
    end
  end

  # @!endgroup
end
