class Admin::PostsController < AdminController
	
	before_action :find_post, only: [:edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			respond_to do |format|
				format.html { redirect_to edit_admin_post_path(@post) }
			end
		else
			render :new
		end
	end

	def update
		if @post.update(post_params)
			redirect_to edit_admin_post_path(@post)
		else
			render :edit
		end
	end

	def edit
	end

	def destroy
		if @post.destroy
			redirect_to admin_posts_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	private

	def find_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :body, :post_category_id, :slug)
	end

end
