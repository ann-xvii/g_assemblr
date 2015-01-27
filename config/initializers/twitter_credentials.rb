require 'twitter'

# Twitter.configure do |config|
#   config.consumer_key =  ENV['TWITTER_KEY']
#   config.consumer_secret = ENV['TWITTER_SECRET']
#   config.oauth_token = ENV['TWITTER_OAUTH_KEY']
#   config.oauth_token_secret = ENV['TWITTER_OAUTH_SECRET']



# end


client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TWITTER_KEY']
  config.consumer_secret     = ENV['TWITTER_SECRET']
  config.access_token        = ENV['TWITTER_OAUTH_KEY']
  config.access_token_secret = ENV['TWITTER_OAUTH_SECRET']
end