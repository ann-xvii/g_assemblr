class CallbacksController < Devise::OmniauthCallbacksController
	def linkedin
		@user = User.from_omniauth(request.env["omniauth.auth"])
		sign_in_and_redirect @user

		# my_auth = request.env['omniauth.auth']['credentials']
	end
end