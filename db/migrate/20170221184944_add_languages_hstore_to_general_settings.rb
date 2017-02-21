class AddLanguagesHstoreToGeneralSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :general_settings, :language, :hstore
  end
end
