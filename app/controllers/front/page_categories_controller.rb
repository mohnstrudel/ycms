class Front::PageCategoriesController < FrontController

	def index
		@page_categories = PageCategory.all
		respond_to do |format|
			format.html
			format.json {
				render json: @page_categories, status: 200
			}
		end
	end

	def show
		@pages = PageCategory.includes(:pages).find(params[:id]).pages
		respond_to do |format|
			format.html
			format.json {
				render json: @pages, status: 200
			}
		end
	end
end
