class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		if @user.update_attributes(user_params)
			redirect_to root_path
		else
			render :edit
		end
	end
end
