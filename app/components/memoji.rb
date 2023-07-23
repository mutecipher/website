class Memoji < ApplicationComponent
  SIZE_CLASSES = {
    small: "w-8 h-8",
    medium: "w-16 h-16",
    large: "w-24 h-24",
    xlarge: "w-32 h-32"
  }.freeze

  def initialize(size: :medium, border: false, shadow: false, rounded: false)
    @size = SIZE_CLASSES[size]
    @border = border
    @rounded = rounded
  end

  def classes
    classes = @size
    classes += " " + "border-0 ring-1 ring-zinc-200/10 dark:ring-zinc-500 border-zinc-200" if @border
    classes += " " + "rounded-full" if @rounded
    classes += " " + "shadow-md" if @shadow
    classes
  end
end
