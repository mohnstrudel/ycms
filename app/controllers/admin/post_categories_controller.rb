class Admin::PostCategoriesController < AdminController
	
	before_action :find_post_category, only: [:edit, :update, :destroy]

	def index
		@post_categories = PostCategory.all
	end

	def new
		@post_category = PostCategory.new
	end

	def create
		@post_category = PostCategory.new(post_category_params)

		if @post_category.save
			redirect_to edit_admin_post_category_path(@post_category)
		else
			render 'new'
		end
	end

	def update
		if @post_category.update(post_category_params)
			redirect_to edit_admin_post_category_path(@post_category)
		else
			render 'edit'
		end
	end

	def edit
	end

	def destroy
		if @post_category.destroy
			redirect_to admin_post_categories_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	private

	def find_post_category
		@post_category = PostCategory.find(params[:id])
	end

	def post_category_params
		params.require(:post_category).permit(:title, :body, :slug)
	end

end

