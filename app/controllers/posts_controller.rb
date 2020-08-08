class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def index

  end
end
