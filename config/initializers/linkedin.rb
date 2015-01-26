LinkedIn.configure do |config|
  config.token = ENV['LINKEDIN_KEY']
  config.secret = ENV['LINKEDIN_SECRET']
  config.default_profile_fields = ['educations', 'positions']
end