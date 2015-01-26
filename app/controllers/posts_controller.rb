require 'capybara/poltergeist'

class PostsController < ApplicationController
	include Capybara::DSL
	Capybara.default_driver = :poltergeist

	
	def index
		visit "https://profiles.generalassemb.ly/"
		# visit "http://reddit.com/r/funny"

		@posts = all(".profile-card-link").map do |link|
			{
				name: link.find("h2").text
 				# url: link.find("a.title")["href"]
 			}
 		end
	end

end
