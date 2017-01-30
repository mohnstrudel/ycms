require 'rails_helper'

RSpec.describe Admin::PostsController, type: :controller do

	render_views

	let (:valid_post) { FactoryGirl.build(:post) }
	let (:invalid_post) { FactoryGirl.build(:post, title: nil) }

	it "has a valid factory" do
		expect(valid_post).to be_valid
	end

	it "using invalid factory should not be valid" do
		expect(invalid_post).not_to be_valid
	end

	context "with valid attributes" do
		it "redirects to slugged edit path after saving" do
			# @post = FactoryGirl.create(:post)
			post :create, params: { post: { id: 5, title: "Xo-HoE-joook", body: "Xo-Xo" } }
			expect(response).to redirect_to(edit_admin_post_path("xo-hoe-joook"))
		end

		it "increases Post count by 1" do
			expect{
				valid_post.save
				}.to change(Post, :count).by(1)
		end
	end

	context "with non valid attributes" do
		it "renders new form again upons saving" do
			# invalid_post.save
			post :create, params: { post: { id: 5, title: nil, body: "Xo-Xo" } }
			expect(response).to render_template("new")
		end

		it "does not save the post" do
			expect{
				invalid_post.save
				}.not_to change(Post, :count)
		end
	end

end
