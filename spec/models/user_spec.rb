require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe User do 

	let (:valid_user) { FactoryGirl.build(:user) }
	let (:invalid_user) { FactoryGirl.build(:user, password: "1234567") }

	it "has a valid factory" do
		expect(valid_user).to be_valid
	end

	it "using invalid factory should not be valid" do
		expect(invalid_user).not_to be_valid
	end

	it "should not be saved without password" do
		user = User.new(email: "not_admin@example.com")
		expect(user).not_to be_valid
	end

	it "should not save as admin" do
		expect { 
  			User.create(email: "admin@example.com", admin: true, password: "mypassword")
		}.not_to change { User.count }
	end

	it "should be saved as regular user with filled in data" do
		expect {
			User.create(email: "regular@user.com", admin: false, password: "supersecret")
			}.to change { User.count }
	end
end