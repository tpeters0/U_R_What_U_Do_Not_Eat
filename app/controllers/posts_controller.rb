class PostsController < ApplicationController

  # before_action :existing_user, only: [:create, :new, :destroy]
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def create
    # @post.user = current_user
      if @post.save
        redirect_to @post
      else
        render :new
      end
  end

  def edit
  end

  def update
      if @post.update(post_params)
        redirect_to @post
      else
        render :edit
      end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:content)
    end
  end

# end
