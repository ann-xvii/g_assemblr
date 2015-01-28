class UsersController < ApplicationController
	before_action :authenticate_user!
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@client = LinkedIn::Client.new(ENV['LINKEDIN_KEY'], ENV['LINKEDIN_SECRET'])
		# @client.authorize_from_access(@user.rtoken, @user.rsecret)
		# the_user = @client.profile(:fields => [:positions]).positions
		# # the_user = client.profile(:fields => %w(positions))
		# @companies = the_user.positions.all.map{|t| t.company}
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

	private

	def user_params
		params.require(:user).permit(:name, :email, :program, :current_status, :location, :description, :image)
	end
end
