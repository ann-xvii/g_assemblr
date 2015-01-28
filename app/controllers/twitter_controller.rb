class TwitterController < ApplicationController
   def index
	    username = 'ga_la'
	    options = {:count => 10, :include_rts => true}
	    @tweets = $client.user_timeline(username, options)
   end
end
