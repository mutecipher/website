class Card < ApplicationComponent
  attr_reader :hover, :ring

  renders_one :title
  renders_one :subtitle
  renders_one :body

  def initialize(hover: true, ring: true)
    @hover = hover
    @ring = ring
  end
end
