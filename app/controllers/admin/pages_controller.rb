class Admin::PagesController < AdminController
	include CrudConcern
	
	before_action :find_page, only: [:edit, :update, :destroy]

	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_params)
		create_helper(@page, "edit_admin_page_path")
	end

	def update
		update_helper(@page, "edit_admin_page_path", page_params)
	end

	def edit
	end

	def destroy
		destroy_helper(@page, "admin_pages_path")
	end

	private

	def find_page
		@page = Page.find(params[:id])
	end

	def page_params
		params.require(:page).permit(:title, :body, :page_category_id, :slug)
	end

end
