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

  it "is invalid without an email address" do
  	user = FactoryGirl.build_stubbed(:no_email)
  	expect(user).to be_invalid
  end


  it "is invalid without a password" do
  expect().to be_invalid

  it "is invalid if the password is different from the password confirmation" do 
  expect().to 
  
  it "is invalid without an email" do
  expect().to

  it "cannot have the same credentials as another user" do
  expect().to	

end
