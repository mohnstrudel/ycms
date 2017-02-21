class Admin::Settings::GeneralSettingsController < AdminController
  include CrudConcern

  before_action :find_general_setting, only: [:edit, :destroy, :update]

  def index
    @general_settings = GeneralSetting.all
  end

  def new
    @general_setting = GeneralSetting.new
  end

  def edit
  end

  def create
    @general_setting = GeneralSetting.new(general_setting_params)
    create_helper(@general_setting, "edit_admin_settings_general_setting_path")
  end

  def destroy
    destroy_helper(@general_setting, "admin_settings_general_setting_path")
  end

  def update
    update_helper(@general_setting, "edit_admin_settings_general_setting_path", general_setting_params)
  end


  private

  def find_general_setting
    @general_setting = GeneralSetting.find(params[:id])
  end

  def general_setting_params
    params.require(:general_setting).permit(:url, :description, :logo)
  end
end
