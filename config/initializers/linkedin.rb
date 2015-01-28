
Rails.application.config.middleware.use OmniAuth::Builder do    
  provider :linkedin,
           ENV['LINKEDIN_CONSUMER_KEY'],
           ENV['LINKEDIN_CONSUMER_SECRET'],
           :scope => 'r_fullprofile r_emailaddress r_contactinfo',
           :fields => ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location", "positions"]
end 


 require 'linkedin'
# $client = LinkedIn::REST::Client.new do |config|
# LINKEDIN_CONFIGURATION = { :site => 'https://api.linkedin.com',
# :authorize_path => '/uas/oauth/authenticate',
# :request_token_path =>'/uas/oauth/requestToken?scope=r_basicprofile+r_emailaddress',
# :access_token_path => '/uas/oauth/accessToken' }


# LinkedIn::Client.new do |config|
#  config.consumer_key        = ENV['LINKEDIN_KEY']
#  config.consumer_secret     = ENV['LINKEDIN_SECRET']
#  config.access_token        = ENV['OAUTH_TOKEN']
#  config.access_token_secret = ENV['OAUTH_SECRET']

# end



#$linkedin_client = LinkedIn::Client.new(ENV['LINKEDIN_KEY'], ENV['LINKEDIN_SECRET'])
# $client = LinkedIn::Client.new(ENV['LINKEDIN_KEY'], ENV['LINKEDIN_SECRET'], LINKEDIN_CONFIGURATION)

#$request_token = $linkedin_client.request_token({}, :scope => "r_basicprofile r_emailaddress r_network")

# rtoken = request_token.token
# rsecret = request_token.secret

# request_token.authorize_url

# client.authorize_from_request(rtoken, rsecret, pin)
