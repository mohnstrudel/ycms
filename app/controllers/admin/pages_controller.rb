class Admin::PagesController < AdminController
	
	before_action :find_page, only: [:edit, :update, :destroy]

	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_params)

		if @page.save
			redirect_to edit_admin_page_path(@page)
		else
			render 'new'
		end
	end

	def update
		if @page.update(page_params)
			redirect_to edit_admin_page_path(@page)
		else
			render 'edit'
		end
	end

	def edit
	end

	def destroy
		if @page.destroy
			redirect_to admin_pages_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	private

	def find_page
		@page = Page.find(params[:id])
	end

	def page_params
		params.require(:page).permit(:title, :body, :page_category_id)
	end

end
