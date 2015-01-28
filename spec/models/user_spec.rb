require 'rails_helper'

RSpec.describe User, :type => :model do

  it "is invalid without a password" do
  expect().to be_invalid

  it "is invalid if the password is different from the password confirmation" do 
  expect().to 
  
  it "is invalid without an email" do
  expect().to

  it "cannot have the same credentials as another user" do
  expect().to	
end
