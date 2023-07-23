class Blog::Post::Tag < ApplicationComponent
  def initialize(tag: nil)
    @tag = tag
  end
end
