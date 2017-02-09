class Admin::Settings::GeneralSettingsController < AdminController

	before_action :find_general_setting, only: [:edit]

	def index
		@general_settings = GeneralSetting.all
	end

	def new
		@general_setting = GeneralSetting.new
	end


	private

	def find_general_setting
		@general_setting = GeneralSetting.find(params[:id])
	end
end
