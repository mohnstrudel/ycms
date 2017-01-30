require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe User do 
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