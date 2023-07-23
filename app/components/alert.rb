class Alert < ApplicationComponent
  attr_reader :message, :type, :dismissable

  TYPE_CLASSES = {
    success: "bg-green-100 text-green-800 ring-green-800",
    danger: "bg-red-100 text-red-800 ring-red-800",
    warning: "bg-yellow-100 text-yellow-800 ring-yellow-800",
    info: "bg-blue-100 text-blue-800 ring-blue-800"
  }.freeze

  def initialize(message:, type: :info, dismissable: false)
    @message = message
    @type = type
    @dismissable = dismissable
  end

  def classes
    "rounded-md p-4 my-4 border-0 ring-1 shadow #{TYPE_CLASSES[@type]}"
  end

  def icon
    case @type
    when :success
      "icons/success.svg"
    when :danger
      "icons/error.svg"
    when :warning
      "icons/warning.svg"
    when :info
      "icons/info.svg"
    end
  end
end
