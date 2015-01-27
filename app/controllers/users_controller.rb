class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		# user = client.profile(:fields => %w(positions))
		# companies = user.positions.all.map{|t| t.company}
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		if @user.update_attributes(user_params)
			redirect_to user_path(current_user)
		else
			render :edit
		end
	end

	# def login
	# 	@token = request.env['omniauth.auth']['credentials']['token']
	# 	@secret = request.env['omniauth.auth']['credentials']['secret']
	# end

	private

	def user_params
		params.require(:user).permit(:name, :email, :program, :current_status, :location, :description, :image)
	end
end
