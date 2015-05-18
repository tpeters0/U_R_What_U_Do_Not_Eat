class RestrictionsController < ApplicationController

  load_and_authorize_resource

  def index
   respond_to do |format|
     format.html
     format.json{render json: @restrictions}
   end
 end


  def show
  end

end
