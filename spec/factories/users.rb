FactoryGirl.define do
	factory :user do 
		name "Your Name"
		email "Your email"
	end

	factory :no_email, class: User do 
		name "Your Name"
		email ""
	end



end