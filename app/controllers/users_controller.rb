class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
	if !check_exist && @user.save
	  redirect_to root_path
	else
	  render :new
	end
  end

  private
  
  def check_exist
    User.exists?(email: @user[:email])
  end
  
  def users_params
    params.require(:user).permit(:email, :password)
  end
end