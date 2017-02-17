class Admin::UsersController < AdminController

	before_action :find_user, only: [:edit]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def edit
	end

	def create
		@user = User.new(user_params)

		if @user.save
			respond_to do |format|
				format.html { 
					redirect_to edit_admin_user_path(@user) 
					flash[:success] = "Удалено успешно"
				}
			end
		else
			render :new
			flash[:alert] = "Что-то пошло не так"
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :first_name, :second_name)
	end

	def find_user
		@user = User.find(params[:id])
	end

end

