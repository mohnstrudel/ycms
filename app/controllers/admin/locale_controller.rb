class Admin::LocaleController < AdminController

	def localize
		session[:locale] = params[:locale]
		redirect_to params[:path]
	end

end