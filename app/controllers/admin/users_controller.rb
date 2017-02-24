class Admin::UsersController < AdminController
	include CrudConcern

	before_action :find_user, only: [:edit, :update]
	before_action :get_locales, only: [:edit, :create, :new]

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
		create_helper(@user, "edit_admin_user_path")
	end

	def update
		update_helper(@user, "edit_admin_user_path", user_params)
	end

	def destroy
		destroy_helper(@user, "admin_users_path")
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :first_name, :second_name)
	end

	def find_user
		@user = User.find(params[:id])
	end

end

