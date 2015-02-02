require 'rails_helper'

RSpec.describe User, :type => :model do

  # it "responds to a name" do
  # 	expect(subject).to respond_to(:name)
  # end

  # it "is invalid without a name" do
  # 	expect(subject).to be_invalid
  # end

  # it "raises an error without a name" do
  # 	expect{subject.save!}.to raise_error(ActiveRecord::RecordInvalid)
  # end
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid if email isn't formatted properly" do
    user = FactoryGirl.build(:user, email: "ads;eff")
    expect(user).to be_invalid
  end

  # it "is invalid if a user tries to sign up with an email address that already exists in our database, regardless of capitalization" do
  #   FactoryGirl.create(:user, email: "apple@example.com")
  #   FactoryGirl.create(:user, email: "Apple@example.com")
  #   user = FactoryGirl.build(:user, email: "apple@example.com")
  #   user1 = FactoryGirl.build(:user, email: "Apple@example.com")
  #   expect(user).to be_invalid
  #   expect(user1).to be_invalid
  # end

  it "is invalid without an email address" do
  	user = FactoryGirl.build_stubbed(:no_email)
  	expect(user).to be_invalid
  end


  # it "is invalid without a password" do
  # expect().to be_invalid

  # it "is invalid if the password is different from the password confirmation" do 
  # expect().to 
  
  # it "is invalid without an email" do
  # expect().to

  # it "cannot have the same credentials as another user" do
  # expect().to	

end
