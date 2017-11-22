class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			sessions[:user_id] = user.user_id
			redirect_to users_index_path
		else
			redirect_to new_session_path
		end
	end
end
