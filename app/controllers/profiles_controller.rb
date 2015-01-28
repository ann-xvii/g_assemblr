require 'capybara/poltergeist'

class ProfilesController < ApplicationController
	include Capybara::DSL
	Capybara.default_driver = :poltergeist

	def index
		(1..24).each do |i|

			visit "https://profiles.generalassemb.ly/profiles?utf8=%E2%9C%93&roles%5B%5D=Front-end+Web+Developer&roles%5B%5D=Back-end+Web+Developer&roles%5B%5D=Full-stack+Web+Developer&roles%5B%5D=UX+Designer&roles%5B%5D=Information+Architect&roles%5B%5D=UX+Researcher&roles%5B%5D=Product+Manager&roles%5B%5D=Sales&positions%5B%5D=fulltime&positions%5B%5D=freelance&positions%5B%5D=apprenticeship&course=&end_date%5Bmin%5D=&end_date%5Bmax%5D=&work_location=&page=#{i}&nocache=25"

			@profiles = all(".profile-card-link").map do |profile|
				{
					name: profile.find("h2").text,
					title: profile.find("h3").text,
					image: profile.find("img.index-profile-image")["src"]
				}
			end
		end
	end
end
