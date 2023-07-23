class PostsController < ApplicationController
  def index
    @posts = Post.published.reverse
    @posts = @posts.filter { |post| params[:tags].any? { |tag| post.tags.include?(tag) } } if params[:tags]
  end

  def show
    @post = Post.find_by_slug(params[:id])
    redirect_to root_path unless @post.published?
  end
end
