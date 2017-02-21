class RemoveLanguageFromGeneralSettings < ActiveRecord::Migration[5.0]
  def change
  	remove_column :general_settings, :language
  end
end
