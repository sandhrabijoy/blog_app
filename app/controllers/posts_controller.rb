class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def show
    @post = Post.friendly.find(params[:id])
  end
end
