class Base < ApplicationComponent
  def initialize(tag:, classes: nil)
    @tag = tag
    @classes = classes
  end

  def call
    content_tag(@tag, content, class: @classes)
  end
end
