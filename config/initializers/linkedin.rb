
require 'linkedin'
# $client = LinkedIn::REST::Client.new do |config|
#   config.consumer_key        = ENV['LINKEDIN_KEY']
#   config.consumer_secret     = ENV['LINKEDIN_SECRET']
#   config.access_token        = ENV['OAUTH_TOKEN']
#   config.access_token_secret = ENV['OAUTH_SECRET']
# end



$client = LinkedIn::Client.new("ENV['LINKEDIN_KEY']", "ENV['LINKEDIN_SECRET']")

$request_token = $client.request_token({}, :scope => "r_basicprofile+r_emailaddress")

rtoken = request_token.token
rsecret = request_token.secret

request_token.authorize_url

client.authorize_from_request(rtoken, rsecret, pin)