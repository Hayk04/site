class UsersController < ApplicationController
	def show
		@user = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update(user_params)
		if current_user.category == "Admin"
			redirect_to user_path(@user)
		else	
			redirect_to user_path(@user)
		end
	end

	private
	def user_params
		params.require(:user).permit(:email, :username)
	end
end
