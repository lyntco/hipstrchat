class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render :json => user
    else
      render :json => { :errors => user.errors.full_messages }
    end
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :name, :password, :password_confirmation, :email)
  end
end
