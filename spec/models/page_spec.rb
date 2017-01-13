require 'rails_helper'

# RSpec.describe Page, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Page do
	it "is invalid without a title" do
		page = Page.new
		expect(page).not_to be_valid
	end

end