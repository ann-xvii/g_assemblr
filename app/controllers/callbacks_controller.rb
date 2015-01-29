class CallbacksController < Devise::OmniauthCallbacksController
	def linkedin
		user_data = request.env["omniauth.auth"]
		@user = User.from_omniauth(user_data)
		info = user_data["info"]
		@linkedin = LinkedinDatum.new
		@linkedin.name = info["name"]
		@linkedin.location = info["location"]
		@linkedin.user = @user
		@linkedin.save!
		sign_in_and_redirect @user

		# my_auth = request.env['omniauth.auth']['credentials']
	end
end