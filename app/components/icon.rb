class Icon < ApplicationComponent
  attr_reader :icon

  ICONS = {
    arrow_uturn: "icons/arrow-uturn-left.svg",
    bars: "icons/bars-3.svg",
    check: "icons/check.svg",
    chevron_right: "icons/chevron-right.svg",
    clipboard: "icons/clipboard.svg",
    danger: "icons/error.svg",
    eye: "icons/eye.svg",
    eye_slash: "icons/eye-slash.svg",
    info: "icons/info.svg",
    moon: "icons/moon.svg",
    newspaper: "icons/newspaper.svg",
    notepad: "icons/notepad.svg",
    success: "icons/success.svg",
    sun: "icons/sun.svg",
    trash: "icons/trash.svg",
    warning: "icons/warning.svg"
  }.freeze

  DEFAULT_SIZE = :medium
  SIZE_CLASSES = {
    small: "h-4 w-4",
    medium: "h-8 w-8",
    large: "h-12 w-12"
  }.freeze

  def initialize(icon:, size: DEFAULT_SIZE, classes: "")
    @icon = ICONS[icon]
    @size = size
    @classes = classes
  end

  def classes
    "#{SIZE_CLASSES[@size]} #{@classes}"
  end
end
