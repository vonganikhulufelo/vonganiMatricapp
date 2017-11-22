class UsersController < ApplicationController
  def index
  end

  def sign_up
  	@user = User.new
  end
  
  def create
    user = User.new(user_params)
    if user.save
    	redirect_to users_sign_up_path
    else
    	redirect_to users_sign_up_path
    end
  end

  private
    def user_params
  		params.require(:user).permit(:name, :emial, :password, :password_confirmation)
  	end
end
