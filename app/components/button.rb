class Button < ApplicationComponent
  DEFAULT_CLASSES = "inline-flex items-center border border-transparent rounded-md font-semibold focus:outline-none focus:shadow-outline transition ease-in-out duration-150"

  DEFAULT_SIZE = :medium
  SIZE_CLASSES = {
    small: "px-2.5 py-1.5 text-xs",
    medium: "px-4 py-2 text-sm",
    large: "px-6 py-3 text-base"
  }.freeze

  DEFAULT_TYPE = :primary
  TYPE_CLASSES = {
    primary: "text-white bg-indigo-600 hover:bg-indigo-700",
    secondary: "text-indigo-700 bg-indigo-100 hover:bg-indigo-200",
    danger: "text-white bg-red-600 hover:bg-red-700",
    success: "text-white bg-green-600 hover:bg-green-700",
    warning: "text-white bg-yellow-600 hover:bg-yellow-700",
    info: "text-white bg-blue-600 hover:bg-blue-700",
    light: "text-zinc-700 bg-zinc-100 hover:bg-zinc-200",
    dark: "text-white bg-zinc-800 hover:bg-zinc-900"
  }.freeze

  def initialize(type: DEFAULT_TYPE, size: DEFAULT_SIZE, **options)
    @type = TYPE_CLASSES[type]
    @size = SIZE_CLASSES[size]
    @options = options
  end

  def classes
    DEFAULT_CLASSES + " " + @type + " " + @size
  end
end
