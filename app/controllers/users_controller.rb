class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    user = User.new(user_params)
    if user.save
      render :json => user
    else
      render :json => { :errors => user.errors.full_messages }
    end
  end

  def update
    user = User.find(params[:user_id])
    if user.update(user_params)
      render :json => user
    else
      render :json => { :errors => user.errors.full_messages }
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :name, :password, :password_confirmation, :email)
  end
end
