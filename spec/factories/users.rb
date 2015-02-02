FactoryGirl.define do
	factory :user, class: User do 
		name "Your Name"
		email "user@email.com"
		password "1234abcd"
	end

	factory :no_email, class: User do 
		name "Your Name"
		email ""
	end



end