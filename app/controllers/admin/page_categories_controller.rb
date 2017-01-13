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

		if @page_category.save
			redirect_to edit_admin_page_category_path(@page_category)
		else
			render 'new'
		end
	end

	def update
		if @page_category.update(page_category_params)
			redirect_to edit_admin_page_category_path(@page_category)
		else
			render 'edit'
		end
	end

	def edit
	end

	def destroy
		if @page_category.destroy
			redirect_to admin_page_categorys_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	private

	def find_page_category
		@page_category = PageCategory.find(params[:id])
	end

	def page_category_params
		params.require(:page_category).permit(:title)
	end

end

