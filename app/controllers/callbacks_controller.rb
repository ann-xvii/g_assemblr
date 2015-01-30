class CallbacksController < Devise::OmniauthCallbacksController
	def linkedin
		# params.require(:linkedin_datum).permit!
		user_data = request.env["omniauth.auth"]
		@user = User.from_omniauth(user_data)
		info = user_data["info"]

		token = user_data["credentials"]["token"]
		secreto = user_data["credentials"]["secret"]
		$pic_url = info["image"]

		# connect to API
		$the_client = LinkedIn::Client.new
		$the_client.authorize_from_access(token, secreto)
		request_token = 
		$safety = $the_client.profile
		$pictures = $the_client.picture_urls
		$connex = $the_client.connections
		# $reply = Httparty.get('https://api.linkedin.com/v1/people/~')
		

		#link linkedin to user

		@linkedin = LinkedinDatum.new
		@linkedin.name = info["name"]
		@linkedin.location = info["location"]
		@linkedin.image = $pictures.all.first
		# @linkedin.image = info["image"]
		@linkedin.user = @user
		@linkedin.save!
		sign_in_and_redirect @user

		# my_auth = request.env['omniauth.auth']['credentials']
	end
end