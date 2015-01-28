Rails.application.config.middleware.use OmniAuth::Builder do    
  provider :linkedin,
           ENV['LINKEDIN_CONSUMER_KEY'],
           ENV['LINKEDIN_CONSUMER_SECRET'],
           :scope => 'r_fullprofile r_emailaddress r_contactinfo',
           :fields => ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location", "positions"]
end 