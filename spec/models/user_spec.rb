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
  
  it "is invalid if email isn't formatted properly"
  it "is invalid if a user tries to sign up with an email address that already exists in the database, regardless of capitalization"

  it "is invalid without an email address" do
  	user = FactoryGirl.build_stubbed(:no_email)
  	expect(user).to be_invalid
  end
end
