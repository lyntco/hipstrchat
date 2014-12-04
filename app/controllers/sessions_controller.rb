class SessionController < ApplicationController

  def create
    user = User.find_by(:nickname => params[:nickname])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id # session is a private hash rails uses
      render :json => user
    else
      render :json => {errors: "Invalid Login"}
    end
  end

end