require "rails_helper"

	# find a page, root, that only has a button, take you to the blog

	# when you click on it it will load index, page we just created
	# should say welcome to the blog

describe "the flow of the app" do 
	it "renders the signup page when we click on the signup link in the navbar" do
		visit "/"
		click_link("Sign Up")
		expect(page).to have_content("Sign Up")
	end


	it "takes you to the About section when you click the Find Out More link" do 
		visit "/"
		click_link("Find Out More")
		expect(page).to have_content("General Assemblr is the definitive source of news for all things GA!")
	end


	it "takes you to the login page when you click the Log In link" do
		visit "/"
		click_link("Log In")
		expect(page).to have_content("Log in")
	end
 
end