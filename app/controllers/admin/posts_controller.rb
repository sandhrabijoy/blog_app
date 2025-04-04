module Admin
  class PostsController < ApplicationController
    before_action :require_authentication, :require_admin

    def new
      @post = Post.new
    end

    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to @post, notice: "Post was successfully created"
      else
        render :new
      end
    end

    private

    def require_admin
      unless Current.session&.user&.admin?
        redirect_to root_path, alert: "You are not authorized to view this page"
      end
    end

    def post_params
      params.require(:post).permit(:title, :body, :banner_image)
    end
  end
end
