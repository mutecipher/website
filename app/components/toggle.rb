class Toggle < ApplicationComponent
  attr_reader :label

  def initialize(label: nil)
    @label = label
  end
end
