class Admin::PostCategoriesController < AdminController
	include CrudConcern
	
	before_action :find_post_category, only: [:edit, :update, :destroy]
	before_action :get_locales, only: [:edit, :create, :new]

	def index
		@post_categories = PostCategory.all
	end

	def new
		@post_category = PostCategory.new
	end

	def create
		@post_category = PostCategory.new(post_category_params)
		create_helper(@post_category, "edit_admin_post_category_path")
	end

	def update
		update_helper(@post_category, "edit_admin_post_category_path", post_category_params)
	end

	def edit
	end

	def destroy
		destroy_helper(@post_category, "admin_post_categories_path")
	end

	private

	def find_post_category
		@post_category = PostCategory.find(params[:id])
	end

	def post_category_params
		params.require(:post_category).permit(:title, :body, :slug)
	end

end

