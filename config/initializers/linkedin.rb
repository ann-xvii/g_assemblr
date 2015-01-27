
# $client = LinkedIn::REST::Client.new do |config|
#   config.consumer_key        = ENV['LINKEDIN_KEY']
#   config.consumer_secret     = ENV['LINKEDIN_SECRET']
#   config.access_token        = ENV['OAUTH_TOKEN']
#   config.access_token_secret = ENV['OAUTH_SECRET']
# end

$client = LinkedIn.configure do |config|
  config.token = "ENV['LINKEDIN_KEY']"
  config.secret = "ENV['LINKEDIN_SECRET']"
end