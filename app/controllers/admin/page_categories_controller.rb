class Admin::PageCategoriesController < AdminController
	
	before_action :find_page_category, only: [:edit, :update, :destroy]

	def index
		@page_categories = PageCategory.all
		
	end

	def new
		@page_category = PageCategory.new
	end

	def create
		@page_category = PageCategory.new(page_category_params)
		create_helper(@page_category, "edit_admin_page_category_path")
	end

	def update
		update_helper(@page_category, "edit_admin_page_category_path", page_category_params)
	end

	def edit
	end

	def destroy
		destroy_helper(@page_category, "admin_page_categories_path")
	end

	private

	def find_page_category
		@page_category = PageCategory.find(params[:id])
	end

	def page_category_params
		params.require(:page_category).permit(:title)
	end

end

