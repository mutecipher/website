class Blog::Post < ApplicationComponent
  attr_reader :post

  def initialize(post:)
    @post = post
  end
end
