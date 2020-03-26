class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def index
    @posts = Post.all
  end
  def create
    @post= Post.new(post_params)
    @post.save
    redirect_to("/posts/index")
  end
end

private
  def post_params
    params.require(:post).permit(:content)
  end