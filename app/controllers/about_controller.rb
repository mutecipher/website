class AboutController < ApplicationController
  before_action :set_posts, :set_jobs

  def index
  end

  private

  def set_posts
    @posts = Post.published.first(3).reverse
  end

  def set_jobs
    @jobs = Job.all
  end
end
