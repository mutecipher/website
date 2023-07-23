class AlertPreview < ViewComponent::Preview
  # @param type select [success, danger, warning, info]
  # @param message text
  # @param dismissable toggle
  def playground(message: "This is a test", type: :success, dismissable: false)
    render Alert.new(message:, type:, dismissable:)
  end

  # @!group Types

  def success
    render Alert.new(message: "This is a success message", type: :success)
  end

  def danger
    render Alert.new(message: "This is a danger message", type: :danger)
  end

  def warning
    render Alert.new(message: "This is a warning message", type: :warning)
  end

  def info
    render Alert.new(message: "This is an info message", type: :info)
  end

  # @!endgroup

  # @!group Dismissable

  def dismissable
    render Alert.new(message: "This is a dismissable alert", dismissable: true)
  end

  def not_dismissable
    render Alert.new(message: "This is a non-dismissable alert", dismissable: false)
  end

  # @!endgroup
end
