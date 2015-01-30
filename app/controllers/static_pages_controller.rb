class StaticPagesController < ApplicationController
  def home
  	username = 'ga'
	    options = {:count => 50, :include_rts => true}
	    @tweets = $client.user_timeline(username, options)
  end

  def about
  end

  def index
	    username = 'ga'
	    options = {:count => 50, :include_rts => true}
	    @tweets = $client.user_timeline(username, options)
   end
end
