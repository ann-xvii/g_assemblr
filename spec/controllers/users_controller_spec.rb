require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
	it "index responds successfully with an HTTP 200 status code" do
		get :index
		expect(response).to be_success
	end

	it "renders the index template" do
		get :index
		expect(response).to render_template("index") 
	end

	
end
