class AddLanguagesToGeneralSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :general_settings, :language, :text
  end
end
