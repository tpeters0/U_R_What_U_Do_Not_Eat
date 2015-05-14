class ProfilesController < ApplicationController

  load_and_authorize_resource

  def index
  end

  def show
  end

  def create
    # @post.user = current_user
      if @profile.save
        redirect_to @profile
      else
        render :new
      end
  end

  def edit
  end

  def update
      if @profile.update(post_params)
        redirect_to @profile
      else
        render :edit
      end
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path
  end

  private
    def profile_params
      params.require(:profile).permit(:content)
    end
  end


end
