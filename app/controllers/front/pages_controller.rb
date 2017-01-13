class Front::PagesController < FrontController
	
	before_action :find_page, only: [:show]

	def show
		respond_to do |format|
			format.html
			format.json {
				render json: @page, status: 200
			}
		end
	end

	def index
		# @page_category = PageCategory.includes(:pages).find params[:page_category_id]
		@pages = PageCategory.includes(:pages).find(params[:page_category_id]).pages

		respond_to do |format|
			format.html
			format.json {
				render json: @pages, status: 200
			}
		end
	end

	private

	def find_page
		@page = Page.find(params[:id])
	end
end
